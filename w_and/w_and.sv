module w_and (
    input logic a, b, c, d,
    output wand y
);
    wire _ab;
    wire _cd;
    assign _ab = (a & b);
    assign _cd = c | d;
    assign y =  _ab & _cd;
endmodule