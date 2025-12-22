//----------------------------------------------------RS latch using NAND gate------------------------------------------------------------------------------------------

module rs_nand(input s, r,
                output q, q0
                );


                assign q = ~(r & q0);
                assign q0 = ~(s & q);

endmodule