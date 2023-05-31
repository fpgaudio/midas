module midi_to_freq(
    input logic [23:0] midi,
    output logic [15:0] freq,
	 input logic rst_n);
	 
	always @(midi[15:8])
	case(midi[15:8])
		 8'd66 : freq = 262;
		 8'd67 : freq = 277;
		 8'd68 : freq = 294;
		 8'd69 : freq = 311;
		 8'd70 : freq = 330;
		 8'd71 : freq = 349;
		 8'd72 : freq = 370;
		 8'd73 : freq = 392;
		 8'd74 : freq = 415;
		 8'd75 : freq = 440;
		 8'd76 : freq = 466;
		 8'd77 : freq = 494;
	endcase
	
endmodule