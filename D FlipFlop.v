//------------------------------------------D Flip flop----------------------------------------------------------------------------------------------------

module dff(input clk,
            input d,
            output reg q,
            output qbar
            );

            assign qbar = ~q;

            always@(posedge clk) begin
                q <= d;
            end

endmodule