//---------------------------------------------Tri- state buffer---------------------------------------------------------------------------------------------------------

module tristate_buffer(input in, en,
                        output out
                        );

                    assign out = (en) ? in : 1'bz;

endmodule
