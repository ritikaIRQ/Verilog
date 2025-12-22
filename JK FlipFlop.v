//---------------------------------------------------JK Flip Flop---------------------------------------------------------------------------------------

module jkff(input clk,
            input j, k,
            output reg q,
            output qbar
            );

            assign qbar = ~ q;

            always@(posedge clk) begin
                case({j, k})
                2'b01 : q <= 1'b0;                          
                2'b10 : q <= 1'b1;
                2'b00 : q <= q;
                2'b11 : q <= ~q;                        //Toggle
                endcase
            end

endmodule

