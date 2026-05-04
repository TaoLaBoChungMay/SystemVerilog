`timescale 1us/1ps
module tb ();
    logic x1, x2, x3, x4, x5;
    logic y1, y2, y_out;

    com uut (
        .x1   (x1),
        .x2   (x2),
        .x3   (x3),
        .x4   (x4),
        .x5   (x5),
        .y1   (y1),
        .y2   (y2),
        .y_out(y_out)
    );
    initial begin
        $dumpfile ("tb.vcd");
        $dumpvars(0, tb);
        $display(" x1 | x2 | x3 | x4 | x5 | y1 | y2 | y_out ");
        $display("----+----+----+----+----+----+----+------");
        for (int i=0; i < 32; i++)  begin
            {x1, x2, x3, x4, x5} = i;

            #1;     // chờ cập nhật
            $display("%1b | %1b | %1b | %1b | %1b | %1b | %1b | %1b ", 
                       x1,   x2,   x3,  x4,   x5,    y1,   y2,   y_out);
            #9;
        end

        $finish;
    end

endmodule