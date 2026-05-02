module bai2 (
    input logic A,
    input logic B,
    input logic C,
    output logic Z
);
    assign Z = C | ~(A | ~B) ; // = C + A'B
endmodule