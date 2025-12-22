//---------------------------------------------------Serial In Parallel Out Shift Register--------------------------------------------------------------------------------

module sipo_register(input clk, rst,
                     input sin,
                     output reg [3:0] pout
                     );
                     
                     always@(posedge clk) begin
                        if(rst) 
                            pout <= 4'b0000;
                        else
                            pout <= {pout[2:0], sin};
                     end

endmodule

