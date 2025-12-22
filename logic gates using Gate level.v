//------------------------------------------------Logic Gates using Gate Level model---------------------------------------------------------------------------------------------//

module logic_gates (input a, b,
                    output and_gate, or_gate, nand_gate, nor_gate, not_gate, xor_gate, xnor_gate
                    );

                    
                    and a1(and_gate, a, b);
                    or o1(or_out, a, b);
                    nand n1(nand_gate, a, b);
                    nor n2(nor_gate, a, b);
                    not n3(not_gate, a);
                    xor x1(xor_gate, a, b);
                    xnor x2(xnor_gate, a, b);

endmodule
