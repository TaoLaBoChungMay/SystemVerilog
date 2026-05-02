module and1 (
    input logic x_in1, x_in2,
    output logic y1;
);
    assign y1 = x_in1 & x_in2;
endmodule

module and2 (
    input logic x_in1, x_in2, x_in3,
    output logic y2;
);
    assign y2 = x_in1 & x_in2 & x_in3;
endmodule

module Nor1 (
    input logic y1, y2,
    output logic y_out;
)
    assign y_out = ~(y1 | y2);
endmodule

module com (

    
);

endmodule