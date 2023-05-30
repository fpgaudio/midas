module test_program(CLOCK_50, EX_IO, /*SW0,*/ LEDR, KEY, SERIAL_IN, BYTE_OUT, debug_out, o_freq,
			o_lcd7_0, o_lcd7_1,o_lcd7_2, o_lcd7_3,o_lcd7_4, o_lcd7_5);

	//inputs and outputs

	input CLOCK_50;
	input KEY;
	//input SW0;
	input SERIAL_IN;
	input [6:0] EX_IO;
	output debug_out;

	output [17:0] LEDR;
	output [7:0] BYTE_OUT;
	output logic [15:0] o_freq;
	
	output logic [0:6] o_lcd7_0;
	output logic [0:6] o_lcd7_1;
	
	output logic [0:6] o_lcd7_2;
	output logic [0:6] o_lcd7_3;

	output logic [0:6] o_lcd7_4;
	output logic [0:6] o_lcd7_5;

	//reg and wire decl
	reg [27:0] count;
	wire reset_n;
	reg [7:0] midi_byte;
	
	/*	
	uart_rx #( .CLKS_PER_BIT(1600) ) rx_in (
		.i_Clock(CLOCK_50),
		.i_Rx_Serial(EX_IO[6]),
		.o_Rx_DV(BYTE_OUT[0]),
		.o_Rx_Byte(midi_byte[7:0])
	);
	*/
	reg mybitcount;
	reg [1:0] mystate_next;
	reg myMIDIbit;
	reg mydisplaytoggle_nxt;
	
	reg [3:0] custom_state;
	reg [23:0]custom_bits;
	
	
	//midiReceive mymidi(
	//	.clck(CLOCK_50),
	//	.LED_out(LEDR[7:0]),
	//	.rst_n(KEY),
	//	.midi_data(EX_IO[6]),
	//	.bitcount(mybitcount),
	//	.state_next(mystate_next[1:0]),
	//	.MIDIbit(myMIDIbit),
	//	.displaytoggle_nxt(LEDR[17])
	//);
	
	midi_custom mymidi(
		.clk(CLOCK_50),
		.serial(EX_IO[6]),
		.rst_n(KEY),
		.out_bytes(custom_bits),
		.state(custom_state),
	);
	assign debug_out = EX_IO[6];
	
	midi_to_freq get_freq(
		.midi(custom_bits),
		.freq(o_freq),
	);
	
	mod_byte_display u_7seg_0
		( .o_lcd_upper_nibble(o_lcd7_1),
		.o_lcd_lower_nibble(o_lcd7_0),
		.i_value(o_freq[15:8]),
		.i_clk(CLOCK_50),
		.i_nrst(1'b1));
		
	mod_byte_display u_7seg_1
		( .o_lcd_upper_nibble(o_lcd7_3),
		.o_lcd_lower_nibble(o_lcd7_2),
		.i_value(o_freq[7:0]),
		.i_clk(CLOCK_50),
		.i_nrst(1'b1));
		
	mod_byte_display u_7seg_2
		( .o_lcd_upper_nibble(o_lcd7_5),
		.o_lcd_lower_nibble(o_lcd7_4),
		.i_value(custom_bits[15:8]),
		.i_clk(CLOCK_50),
		.i_nrst(1'b1));
		
	//assign o_lcd7_0 = custom_bits[7:0];
		
		
	//assign LEDR[7:0] = custom_bits[15:8];

	assign reset_n = KEY;
	//assign LEDR[7:0] = midi_byte[7:0];
	

	always@(posedge CLOCK_50 or negedge reset_n)
	begin
		if(!reset_n)
			count = 0;
		else
			count = count + 1;
	end
	
	//assign LEDR [2:0] = count[26:24];
	//assign LEDR [3] = SW0;
	//assign LEDR [3] = EX_IO[6];		

endmodule