//------------------------------------------------MUX [8 : 1] Using MUX [2 : 1]-----------------------------------------------------------------------------------------------------------------

module mux (input [7:0] in,
            input [2:0] sel,
            output y
            );

            wire w1, w2, w3, w4;
            wire w5, w6;

            mux_2to1 m0(in[0], in[1], sel[0], w1);                                      // sel[0] - chooses within each pair
            mux_2to1 m1(in[2], in[3], sel[0], w2);
            mux_2to1 m2(in[4], in[5], sel[0], w3);
            mux_2to1 m3(in[6], in[7], sel[0], w4);

            mux_2to1 m4(w1, w2, sel[1], w5);                                           // sel[1] - chooses between groups of 4
            mux_2to1 m5(w3, w4, sel[1], w6);

            mux_2to1 m6(w5, w6, sel[2], y);                                            // sel[2] - chooses between the upper and lower half

endmodule
