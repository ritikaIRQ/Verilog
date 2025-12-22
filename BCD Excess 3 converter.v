//-------------------------------------------BCD Excess 3 Adder--------------------------------------------------------------------------------------------------

module bcd_excess3(input [3:0] data,
                    output [3:0] ex_d
                    );

                    assign ex_d[3] = data[3] | (data[2] & data[1]) | (data[2] & data[0]);
                    assign ex_d[2] = (~data[2] & data[1]) | (~data[2] & ~data[1] & data[0]) | (data[2] & ~data[1] & ~data[0]);
                    assign ex_d[1] = ~(data[1] ^ data[0]);
                    assign ex_d[0] = ~data[0];

endmodule
