module test_program(CLOCK_50, EX_IO, /*SW0,*/ LEDR, KEY, SERIAL_IN, BYTE_OUT);

	//inputs and outputs

	input CLOCK_50;
	input KEY;
	//input SW0;
	input SERIAL_IN;
	input [6:0] EX_IO;

	output [7:0] LEDR;
	output [7:0] BYTE_OUT;

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
	
	
	midiReceive mymidi(
		.clck(CLOCK_50),
		.LED_out(LEDR[7:0]),
		.rst_n(KEY),
		.midi_data(EX_IO[6]),
		.bitcount(mybitcount),
		.state_next(mystate_next[1:0]),
		.MIDIbit(myMIDIbit),
		.displaytoggle_nxt(mydisplaytoggle_nxt)
	);

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