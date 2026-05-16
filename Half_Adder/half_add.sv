module hd (
    input logic [4:0] a, 
    input logic [4:0] b,
    output logic [8:0] c
);
    assign c = a * b;
endmodule