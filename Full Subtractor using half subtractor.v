//-------------------------------------------------------Full Subtractor using Half Subtractor------------------------------------------------------------------------------------------------------

module fs_hs(input a, b, bin,
             output diff, borr
            );

wire w1, x1, x2;

            half_subtractor hs1(a, b, w1, x1);
            half_subtractor hs2(w1, bin, diff, x2);

            assign borr = x1 | x2;

endmodule

