module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire t0, t1, t2;
    wire [15:0]temp1,temp2;
    
    add16 inst1 ( a[15:0], b[15:0], 1'b0, sum[15:0], t0);
    
    add16 inst2 ( a[31:16], b[31:16], 1'b0, temp1, t1);
    add16 inst3 ( a[31:16], b[31:16], 1'b1, temp2, t2);
    
    always @(*) begin
        case(t0)
            1'b0: sum[31:16] = temp1; 
            1'b1: sum[31:16] = temp2;
        endcase
    end
    
endmodule
