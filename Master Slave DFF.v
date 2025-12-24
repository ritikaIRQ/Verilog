//--------------------------------------------------------Master Slave DFF-----------------------------------------------------------------------------------------

module master_slave_dff(input clk, rst,
                        input d,
                        output reg q, 
                        output reg master
                        );


                        always@(posedge clk) begin
                            if(rst)
                                master <= 0;
                            else 
                            master <= d;
                        end

                        always@(negedge clk) begin
                          if(rst) 
                              q <= 0;
                          else
                              q <= master;
                        end

endmodule
                            

