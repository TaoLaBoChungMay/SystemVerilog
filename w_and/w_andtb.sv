module testbench ();

    logic a,b,c,d, y;

    w_and uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y(y)
    );
    initial 
        begin
            $dumpfile("tb.vcd");
            $dumpvars(0, uut);
            $display("-------------------------------------------------");
            $display("| a | b | c | d || ab | cd | y |");
            $display("-------------------------------------------------");
            for (int i = 0 ; i < 1 << 4 ;i++ ) 
                begin
                    #1;
                    {a, b, c, d} = i;
                    
                    #9;
                    $display(" %1b | %1b |%1b |%1b |%1b |%1b |%1b |", a, b, c, d, uut._ab, uut._cd, y);
                end
            $finish;
        end


endmodule

