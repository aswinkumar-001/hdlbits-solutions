module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    wire t0, t1, t2, t3, t4, t5;
    
    assign t0 = p2a & p2b;
    assign t1 = p1a & p1c & p1b;
    assign t2 = p2c & p2d;
    assign t3 = p1f & p1e & p1d;
    assign p2y = t0 | t2;
    assign p1y = t1 | t3;

endmodule
