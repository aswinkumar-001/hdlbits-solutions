module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   );
    
    wire t0,t1;
    
    assign t0 = a & b;
    assign t1 = c & d;
    assign out = t0 | t1;
    assign out_n = ~out; 

endmodule