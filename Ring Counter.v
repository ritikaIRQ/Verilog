//---------------------------------------------Ring Counter-----------------------------------------------------------------------------------------------

module ring_counter(input clk, rst,
                    output reg [3:0] q
                    );

                    always@(posedge clk) begin
                        if(rst) q <= 4'b1000;                           //Initial '1' shifted into MSB
                        else q <= {q[2:0], q[3]};                       // Circular LEft shift
                    end

endmodule