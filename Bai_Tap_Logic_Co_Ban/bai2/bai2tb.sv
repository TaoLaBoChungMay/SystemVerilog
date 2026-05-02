module tb ();

    logic A, B, C;
    logic Z;

    bai2 uut (
        .A(A),
        .B(B),
        .C(C),
        .Z(Z)
    );

    initial begin

        $dumpfile ("tb.vcd");
        $dumpvars (0, uut);

        for (int i= 0; i < 8; i++) begin
            {A, B, C} = 3'(i);      // Gán 3 bit cùng lúc
            #10;
            $display("A = %0b | B = %0b | C = %0b | Z = %0b", A, B, C, Z);
        end
        $finish;
    end
endmodule 