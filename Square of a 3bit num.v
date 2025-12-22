//-------------------------------------------------------Squares of 3-bit numbers------------------------------------------------------------------------------------------

module squares(input [2:0] num,
                output [5:0] out
                );

                assign out[5] = num[2] & num[1];
                assign out[4] = num[2] & (num[0] | ~num[1]);
                assign out[3] = num[0] & (num[2] ^ num[1]);
                assign out[2] = num[1] & ~num[0];
                assign out[1] = 1'b0;
                assign out[0] = num[0];

endmodule