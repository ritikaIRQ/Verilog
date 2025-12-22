//---------------------------------------------------------4 - bit comparator--------------------------------------------------------------------------------------------------------

module comparator (input [3:0] a, b,
                    output less, greater, equal
                    );

                    assign less = (a < b);
                    assign greater = (a > b);
                    assign equal = (a == b);

endmodule

