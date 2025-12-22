//-----------------------------------------------------RS latch using NOR gate----------------------------------------------------------------------------------------

module RS_nor(input s, r, 
              output q, q0
              );


              assign q = ~(r | q0);
              assign q0 = ~(s | q);

endmodule