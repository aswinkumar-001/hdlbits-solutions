module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] t0, t1, t2;
    
    my_dff8 inst1 ( .clk(clk), .d(d), .q(t0) );
    my_dff8 inst2 ( .clk(clk), .d(t0), .q(t1) );
    my_dff8 inst3 ( .clk(clk), .d(t1), .q(t2) );

    always @(*) begin
        case(sel)
            2'b00: q = d;
            2'b01: q = t0;
            2'b10: q = t1;
            2'b11: q = t2;
        endcase
    end
            
endmodule