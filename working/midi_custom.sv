module midi_custom(
    input logic clk,
    input logic serial,
	input logic rst_n,
    output logic [23:0] out_bytes,
    output logic [3:0] state);

    //state 0: waiting for start bit
    //state 1: aligning with center of bit
    //state 2: grabbing bits

    logic [15:0] count;
    logic [7:0] index;
    logic [1:0] byte_count;

    always @(posedge clk) begin
	 
		if (!rst_n) begin
			state <= 4'b0;
			count <= 15'b0;
			index <= 8'b0;
			out_bytes <= 24'b0;
			byte_count <= 2'b0;
		end
		
	    if(state == 0 && serial == 0) begin
			state <= 1;
			count <= 0;
		end
        if(state > 0) count <= count + 1;
        if(state == 1 && count > 800) begin
            state <= 2;
            count <= 0;
        end
        if(index >= 8) begin
            index <= 0;
            state <= 0;
            count <= 0;
            byte_count <= byte_count + 1;
        end
        if(state == 2 && count > 1600 )begin
            out_bytes[index + 8*byte_count] <= serial;
            //out_bytes[index] <= serial;
            index <= index + 1;
            count <= 0;
        end
        if(byte_count >= 4) byte_count <= 0;
    end
endmodule