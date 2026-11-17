module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
	
    genvar i;
    generate
        for(i = 0; i < 100; i = i + 1) begin: ripple_adder
            full_adder inst1( 
                .a(a[i]),
                .b(b[i]),
                .cin((i == 0) ? cin : cout[i-1]),
                .sum(sum[i]),
                .cout(cout[i])
            );
        end
    endgenerate
endmodule

module full_adder(
    input a,b,cin,
    output sum,cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule