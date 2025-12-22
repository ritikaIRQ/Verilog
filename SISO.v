//-------------------------------------------Serial In Serial Out Shift Register----------------------------------------------------------------------------------------------

module siso_register(input clk, rst,
                            input sin,
                            output sout
                            );

                            reg[3:0] q;

                            always@(posedge clk) begin
                                if(rst) 
                                    q <= 4'b0000;
                                else 
                                    q <= {q[2:0], sin};
                            end

                            assign sout = q[3];

endmodule