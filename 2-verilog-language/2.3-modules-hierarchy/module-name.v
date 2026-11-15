module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);

    mod_a inst1 ( .in4(d), .in3(c), .in2(b), .in1(a), .out1(out1), .out2(out2) );
endmodule