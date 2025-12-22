//------------------------------------------------------Octal to Binary Encoder-----------------------------------------------------------------------------------------------------------------------

module octal_to_bin(input [7:0] oct,
                    output [2:0] bin
                    );


                    assign bin[0] = oct[1] | oct[3] | oct[5] | oct[7];
                    assign bin[1] = oct[2] | oct[3] | oct[6] | oct[7];
                    assign bin[2] = oct[4] | oct[5] | oct[6] | oct[7];

endmodule