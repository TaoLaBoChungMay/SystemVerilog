module And_XOR(
    input logic x1,
    input logic x2,
    output logic y
);
    wire and_gate;
    assign and_gate = x1 & x2;
    assign y = and_gate ^ x1;      // tương đương với x1.x2'
endmodule