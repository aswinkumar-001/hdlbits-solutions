module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire t0, t1;
    wire [31:0] temp;
    
    assign temp = b[31:0] ^ {32{sub}};
    
    add16 inst1 (a[15:0], temp[15:0], sub, sum[15:0], t0);
    add16 inst2 (a[31:16], temp[31:16], t0, sum[31:16], t1);
    
endmodule