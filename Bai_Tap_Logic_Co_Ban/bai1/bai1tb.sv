`timescale  1us / 1ns
module tb ();

    logic x1, x2; // input x1,x2 in module
    logic y;     // output t

    And_XOR uut (
        .x1(x1),
        .x2(x2),
        .y(y)
    );

    initial begin

        $dumpfile ("tb.vcd");
        $dumpvars (0, uut);

        x1 = 0; x2 = 0;    #10;
        $display("x1 = %0b | x2 = %0b | %0b & %0b  = %0b", x1, x2, x1, x2, y);

        x1 = 0; x2 = 1;    #10;
        $display("x1 = %0b | x2 = %0b | %0b & %0b  = %0b", x1, x2, x1, x2, y);

        x1 = 1; x2 = 0;    #10;
        $display("x1 = %0b | x2 = %0b | %0b & %0b  = %0b", x1, x2, x1, x2, y);

        x1 = 1; x2 = 1;    #10;
        $display("x1 = %0b | x2 = %0b | %0b & %0b  = %0b", x1, x2, x1, x2, y);

        $finish;
    end
endmodule