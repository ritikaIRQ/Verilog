//--------------------------------------------------Full Adder Using Half Adders--------------------------------------------------------------------------------------------------------

module fa_ha(input a, b, cin,
             output sum, cout
             );


             half_adder h1(a, b, w1, x1);
             half_adder h2(w1, cin, sum, x2);

             assign cout = x1 | x2;

endmodule

