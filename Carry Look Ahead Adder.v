//-----------------------------------------------------Carry Look Ahead Adder------------------------------------------------------------------------------

module carry_look_ahead_adder(input [3:0] a, b,
                              input cin,
                              output [3:0] sum,
                              output cout
                              );

                              wire [3:0] g, p, c;

                              assign p = a ^ b;
                              assign g = a & b;

                              assign c[0] = cin;
                              assign c[1] = g[0] | (p[0] & cin);
                              assign c[2] = g[1] | (g[0] & p[1]) | (p[0] & p[1] & cin);
                              assign c[3] = g[2] | (g[1] & p[2]) | (g[0] & p[1] & p[2]) | (p[0] & p[1] & p[2] & cin);
                              assign cout = g[3] | (g[2] & p[3]) | (g[1] & p[2] & p[3]) | (g[0] & p[1] & p[2] & p[3]) | (p[0] & p[1] & p[2] & p[3] & cin);

                              assign sum = p ^ c;

endmodule
