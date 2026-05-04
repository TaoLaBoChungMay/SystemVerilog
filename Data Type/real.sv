module realdt ();
    real b= 3.4898;
    int c = int'(b);

    initial begin
        $display("b = %.17f", b);
        $display("c = %0d", c);
    end
endmodule