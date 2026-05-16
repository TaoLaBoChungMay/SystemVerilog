`timescale 1us/1us
module tb ();
    logic [4:0] a,b;
    real c;

    dvd uut (
        .a(a),
        .b(b),
        .c(c)
    );
    initial begin

        for (int i=0; i < 1 <<5; i++) 
            begin
                a = i;
                for (int j=1; j < 1<<5; j++)
                    begin
                        b = j;                        
                        #1;
                        $display("%0d / %0d = %.3f", a, b, c);
                    end
            end
        $finish;
    end
endmodule