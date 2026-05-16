module tb();
    logic [4:0] a;
    logic [4:0] b;
    logic [8:0] c;

    hd hd (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        $dumpfile ("tb.vcd");
        $dumpvars(0,hd);

        for (longint i=0; i < 1<< 8; i++)
        begin
            {a, b} = i;

            $display (" %d  * %d  = %d", a, b, c );     
            #5;
        end
        $finish;
    end

    
endmodule