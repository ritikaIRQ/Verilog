//--------------------------------------------------------Ripple Carry Adder(4-bit)-------------------------------------------------------------------------------------------------

module ripple_CA(input [3:0] a, b,
                 input cin,
                 output [3:0] sum, 
                 output cout
                 );

wire [2:0] carry;

                 full_adder f1(a[0], b[0], cin, sum[0], carry[0]);
                 full_adder f2(a[1], b[1], carry[0], sum[1], carry[1]);
                 full_adder f3(a[2], b[2], carry[1], sum[2], carry[2]);
                 full_adder f4(a[3], b[3], carry[2], sum[3], cout);

endmodule



