//----------------------------------------------------Carry Save Adder-------------------------------------------------------------------------------------------------------

module full_adder(input a, b, cin,
                  output sum, cout
                  );

                  assign sum = a ^ b ^ cin;
                  assign cout = (a & b) | (a & cin) | (b & cin);

endmodule

module carry_save_adder(input [3:0] a, b, c,
                        output [4:0] sum, cout,
                        output [5:0] out
                        );

                        wire [3:0] sum_temp, cout_temp, co;

                        full_adder fa1(a[0], b[0], c[0], sum_temp[0], cout_temp[0]);
                        full_adder fa2(a[1], b[1], c[1], sum_temp[1], cout_temp[1]);
                        full_adder fa3(a[2], b[2], c[2], sum_temp[2], cout_temp[2]);
                        full_adder fa4(a[3], b[3], c[3], sum_temp[3], cout_temp[3]);
                        full_adder fa5(sum_temp[1], cout_temp[0], 1'b0, sum[1], co[0]);
                        full_adder fa6(sum_temp[2], cout_temp[1], co[0], sum[2], co[1]);
                        full_adder fa7(sum_temp[3], cout_temp[2], co[1], sum[3], co[2]);
                        full_adder fa8(1'b0, cout_temp[3], co[2], sum[4], cout);

                        assign sum[0] = sum_temp[0];
                        assign out = {cout,sum};

endmodule
