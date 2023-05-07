`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module midi_in_tb;
    reg clk, serial;
    wire [23:0] out_bytes;
    reg [3:0] state;

    localparam midiperiod = 32000;

    midi_in mymidi (.clk(clk), .serial(serial), .out_bytes(out_bytes), .state(state));

    initial begin        

        //hold line high
        serial = 1;
        #13727

        // sending 3 bits: 
            //8'b00001001 => logic analyzer 0x90
            //8'b00100000 => logic analyzer 0x04
            //8'11111110 => logic analyzer 0x7F
        //start bit
        serial = 0;
        #midiperiod
        
        //8'b00000000 => logic analyzer 0x90
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 1;
        #midiperiod

        //stop and restart bits
        serial = 1;
        #midiperiod
        serial = 0;
        #midiperiod

        //8'b00100000 => logic analyzer 0x04
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod
        serial = 0;
        #midiperiod

        //stop and restart bits
        serial = 1;
        #midiperiod
        serial = 0;
        #midiperiod

        //8'11111110 => logic analyzer 0x7F
        serial = 1;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 1;
        #midiperiod
        serial = 0;
        #midiperiod

        //final stop bit
        serial = 1;
        

    end

    always begin
        clk = 1'b1; 
        #10; // high for 20 * timescale = 20 ns

        clk = 1'b0;
        #10; // low for 20 * timescale = 20 ns
    end
endmodule