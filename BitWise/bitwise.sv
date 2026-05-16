module tb ();

    logic [2:0] a;
    logic [4:0] b;
    real c;

    
    assign c = real'(a)* real'(b);
    initial begin
        #1;
        a = 3'b111; b = 5'b10101;

        #4;
        $display("c = %.2f", c);

        $finish;
    end
endmodule