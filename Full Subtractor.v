//-----------------------------------------------------Full Subtractor-------------------------------------------------------------------------------------------

module full_subtractor(input a, b, bin,
                        output diff, borr
                    );

wire w1, w2, w3;

                    assign diff = a ^ b ^ bin;
                    assign w1 = (~a) & b;
                    assign w2 = (~a) & bin;
                    assign w3 = b & bin;
                    assign corr = w1 | w2 | w3;

endmodule

