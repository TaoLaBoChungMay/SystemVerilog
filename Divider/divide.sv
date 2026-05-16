module dvd (
    input logic [4:0] a, b,
    output real c
);
    always_comb begin 
        c = $itor(a) / $itor(b);
    end
endmodule