//--------------------------------------------------- Decimal to BCD Encoder-------------------------------------------------------------------------------------------------------------------

module dec_to_bcd(input [9:0] dec,
                  output [3:0] bin
                  );


                  assign out[0] = dec[1] | dec[3] | dec[5] | dec[7] | dec[9];
                  assign out[1] = dec[2] | dec[3] | dec[6] | dec[7];
                  assign out[2] = dec[4] | dec[5] | dec[6] | dec[7];
                  assign out[3] = dec[8] | dec[9];

endmodule
