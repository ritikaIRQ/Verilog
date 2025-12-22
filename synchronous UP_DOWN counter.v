//-------------------------------------------Synchronous UP/DOWN Counter-----------------------------------------------------------------------------------

module sync_counter(input clk, rst,
                    input up_down,                      // up = 1'b1, down = 1'b0
                    output reg [2:0]count
                    );

                    always@(posedge clk) begin
                        if(rst) count <= 3'b000;
                        else if(up_down) count <= count + 1;
                        else count <= count - 1;
                    end

endmodule 
