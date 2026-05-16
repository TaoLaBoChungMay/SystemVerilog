module asmd (
    input logic [5:0] a, b, c,
    output real d
);
    assign d = real'(a + b*c) / 12.3; 
endmodule