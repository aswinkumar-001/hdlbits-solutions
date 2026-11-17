module top_module( 
    input [254:0] in,
    output reg [7:0] out );

    int i;
    always @(*) begin
        out = 0;
        for(i = 0; i < 255; i++) begin
            if(in[i] == 1)
                out = out + 1'b1;
        end
        
        /*
        // method 2
        for (int i=0;i<255;i++)
			out = out + in[i];
        */
        
    end
    
endmodule