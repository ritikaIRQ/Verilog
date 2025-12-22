//---------------------------------------------SR Flip Flop-----------------------------------------------------------------------------------------------

module srff (input clk,
             input s, r,
             output reg q, 
             output q0
             );

             assign q0 = ~q;

             always@(posedge clk) begin
                case ({s, r})
                    2'b10 : q <= 1'b1;              // Set
                    2'b01 : q <= 1'b0;              // Reset
                    2'b00 : q <= q;                 // Hold(memory)
                    2'b11 : q <= 1'bx;              // Invalid condition
                endcase
             end

endmodule
                
