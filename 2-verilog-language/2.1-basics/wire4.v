module top_module( 
    input a,b,c,
    output w,x,y,z );
    
    assign w = a;
	assign x = b;
	assign y = b;
	assign z = c;
    
    // Approach no.2 with concatenation operator if we're certain about the width of each signal
    //assign {w,x,y,z} = {a,b,b,c};

endmodule
