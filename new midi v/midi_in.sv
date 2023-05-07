module midi_in(clk,serial,out_bytes,state);
    input clk;
    input serial;
    output reg [23:0] out_bytes;
    output reg [3:0] state;
    //state 0: waiting for start bit
    //state 1: aligning with center of bit
    //state 2: grabbing bits

    reg [15:0] count;
    reg [7:0] index;
    reg [1:0] byte_count;

    initial begin
        state = 0;
        count = 0;
        index = 0;
        out_bytes = 24'b0;
        byte_count = 0;
    end

    always @(posedge clk) begin
        if(state > 0) count = count + 1;
        if(state == 1 && count > 800) begin
            state = 2;
            count = 0;
        end
        if(index >= 8) begin
            index = 0;
            state = 0;
            count = 0;
            byte_count = byte_count + 1;
        end
        if(byte_count > 2) byte_count = 0;
        if(state == 2 && count > 1600 )begin
            out_bytes[index + 8*byte_count] <= serial;
            index = index + 1;
            count = 0;
        end
    end

    always @(negedge serial) begin
        if(state == 0) begin
            state = 1;
            count = 0;
        end
    end

endmodule

