module test_program(
	input logic CLOCK_50, KEY, SERIAL_IN, 
	input logic [6:0] EX_IO, 
	output logic [17:0] LEDR, 
	output logic debug_out, 
	output logic [15:0] o_freq,
	output logic [0:6] o_lcd7_0, o_lcd7_1,o_lcd7_2, o_lcd7_3,o_lcd7_4, o_lcd7_5);
	
	//===============LEAP INPUT==================//
	
	reg [3:0] leap_state;
	reg [159:0] leap_bits;
	
	leap_in myleap(
		.clk(CLOCK_50),
		.serial(EX_IO[5]),
		.rst_n(KEY),
		.out_bytes(leap_bits),
		.state(leap_state),
	);
	
	//===============MIDI INPUT==================//
	
	reg [3:0] midi_state;
	reg [23:0]midi_bits;
	
	midi_custom mymidi(
		.clk(CLOCK_50),
		.serial(EX_IO[6]),
		.rst_n(KEY),
		.out_bytes(midi_bits),
		.state(midi_state),
	);
	assign debug_out = EX_IO[6];
	
	midi_to_freq get_freq(
		.midi(midi_bits),
		.freq(o_freq),
	);
	
	//===============7SEG DISPLAYS==================//
	
	mod_byte_display u_7seg_0
		( .o_lcd_upper_nibble(o_lcd7_1),
		.o_lcd_lower_nibble(o_lcd7_0),
		.i_value(leap_bits[159:152]),
		.i_clk(CLOCK_50),
		.i_nrst(1'b1));
		
	mod_byte_display u_7seg_1
		( .o_lcd_upper_nibble(o_lcd7_3),
		.o_lcd_lower_nibble(o_lcd7_2),
		.i_value(leap_bits[151:144]),
		.i_clk(CLOCK_50),
		.i_nrst(1'b1));
		
	mod_byte_display u_7seg_2
		( .o_lcd_upper_nibble(o_lcd7_5),
		.o_lcd_lower_nibble(o_lcd7_4),
		.i_value(midi_bits[15:8]),
		.i_clk(CLOCK_50),
		.i_nrst(1'b1));

endmodule