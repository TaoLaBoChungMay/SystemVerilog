module tb ();
    logic [5:0] a,b;
    logic [6:0] c;
    songuyen uut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        a = 15; b = 16;
        #1;
        $display ( "%d + %d", "=",a,b,c);

        $finish;
    end
endmodule