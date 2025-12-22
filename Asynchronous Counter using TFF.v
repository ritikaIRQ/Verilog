//----------------------------------------------Asynchronous Counter Using T Flipflop-----------------------------------------------------------------------------------

module tff(input clk, rst,
            input t,
            output reg q
            );

            always@(posedge clk, negedge rst) begin
                if(!rst) q <= 0;
                else if(t) q <= ~q;
                else q <= q;
            end

endmodule

module asyn_counter(input clk, rst,
                    output reg [3:0] q,
                    output qbar
                    );

                    tff t0(.clk(clk), .rst(rst), .t(1'b1), .q(q[0]));
                    tff t1(.clk(q[0]), .rst(rst), .t(1'b1), .q(q[1]));
                    tff t2(.clk(q[1]), .rst(rst), .t(1'b1), .q(q[2]));
                    tff t3(.clk(q[2]), .rst(rst), .t(1'b1), .q(q[3]));

                    assign qbar = ~q;

endmodule