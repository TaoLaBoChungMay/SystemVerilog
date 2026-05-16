module tb();
    logic B, C, E;

    BJT bjt (
        .B(B),
        .C(C),
        .E(E)
    );

    initial begin
        $dumpfile("bjt_tb.vcd");
        $dumpvars(0, bjt);

        for (int i =0; i < 4; i++)
            begin
                {B,C} = 2'(i);
                #10;
                $display("B= %0b | C = %0b | E = %0b", B, C, E);
            end
            $finish;
    end
endmodule