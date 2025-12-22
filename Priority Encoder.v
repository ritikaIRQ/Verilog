//------------------------------------------------------Priority Encoder [4 : 2]--------------------------------------------------------------------------------------------------------------

module pri_encoder(input [3:0] in,
                    output reg [1:0] out
                    );


                    always@(*) begin
                        casex(in)
                        4'b0000 : out = 2'd0;
                        4'b0001 : out = 2'd0;
                        4'b001x : out = 2'd1;
                        4'b01xx : out = 2'd2;
                        4'b1xxx : out = 2'd3;
                        default : out = 2'd0;
                        endcase

                    end

endmodule 

