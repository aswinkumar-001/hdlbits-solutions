module top_module( 
    input [99:0] in,
    output [99:0] out
);
	int i;
    always @(*) begin
        /*
        // method 1:
        for(i = 99; i >= 0; i--) begin
            out[99-i] = in[i];
        end
        */
        
        // method 2:
        for(i = 0; i <= 99; i++) begin
            out[i] = in[100-i-1];
        end
    end
       
endmodule