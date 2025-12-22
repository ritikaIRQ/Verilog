//----------------------------------------------------4-bit BCD Adder-------------------------------------------------------------------------------------------------------------------------------

module BCD_Adder(input [3:0] a, b,
                 input cin,
                 output [3:0] sum,
                 output cout
                 );

                 reg cout_temp;
                 reg [4:0] sum_temp;

                 always@(*) begin
                    sum_temp = a + b + cin;

                    if(sum_temp > 9) begin
                        sum_temp = sum_temp + 6;
                        cout_temp = 1;
                    end
                    else 
                        sum_temp = sum_temp[3:0];
                        cout_temp = sum_temp[4];
                 end
                 assign sum = sum_temp;
                 assign cout = cout_temp;

endmodule