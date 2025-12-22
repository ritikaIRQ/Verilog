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
                            master d;
                            else
                            
