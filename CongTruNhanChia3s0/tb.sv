module tb ();
    logic [5:0] a, b, c;
    real d;

    asmd asmd (
        .a(a),
        .b(b),
        .c(c),
        .d(d)
    );
    initial begin 

        $dumpfile("gtk.vcd");
        $dumpvars(0,asmd);
        a = 4'b1101;  b = 5'b11111; c = 3'b000;
        #1;
        
        #3;
        $display(" %.2f", d);
        $finish;
    end
endmodule