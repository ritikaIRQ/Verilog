//-----------------------------------------------Parallel In Serial Out Shift Register-------------------------------------------------------------------------

module piso_register(input clk, rst,
                     input ld,
                     input [3:0] pin,
                     output sout
                     );

                     reg [3:0] out;

                     always@(posedge clk) begin
                        if(rst)
                            out <= 4'b0000;
                        else if(ld)
                            out <= pin;
                        else 
                            out <= (out << 1);
                     end

                     assign sout = out[3];

endmodule