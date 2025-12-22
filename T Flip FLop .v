//----------------------------------------------------T - Flip Flop----------------------------------------------------------------------------------------

module tff(input clk,
            input t,
            output reg q,
            output q0
            );

            assign q0 = ~q;

            always@(posedge clk) begin
                case (t)
                1'b0 : q <= q;                      //Hold(memory)
                1'b1 : q <= ~q;                     // Toggle
                endcase
            end

endmodule