module and1 (
    input logic x_in1, x_in2,
    output logic y1
);
    and (y1, x_in1, x_in2);
endmodule

module and2 (
    input logic x_in3, x_in4, x_in5,
    output logic y2
);
    and (y2 , x_in3 , x_in4 , x_in5);
endmodule

module Nor1 (
    input logic y1, y2,
    output logic y_out
);
    nor(y_out,y1 , y2);
endmodule

// ket hop
module com (
    input logic x1, x2, x3, x4, x5,
    output logic y1, y2, y_out
);
    // module 1
    and1 u1 (
        .x_in1(x1),
        .x_in2(x2),
        .y1(y1)
    );
    // module 2
    and2 u2(
        .x_in3(x3),
        .x_in4(x4),
        .x_in5(x5),
        .y2(y2)
    );

    // module 3
    Nor1 u3 (
        .y1(y1),
        .y2(y2),
        .y_out(y_out)
    );


endmodule