module tb ();
    logic clk, rst;
    logic signed [4:0] count;

    mds uut (
        .clk  (clk),
        .rst  (rst),
        .count(count)
    );

    // Tạo file .vcd
    initial begin
        $dumpfile ("tb.vcd");
        $dumpvars (0, uut);
    end

    // Tạo clk 
    initial begin
        clk = 0;
        while (1)
            begin
                #5;
                    clk = ~clk;
            end
    end

    // Tạo xung rst
    initial begin
        rst = 1;
        while (1)
            begin
                #30;
                rst = !rst;
            end
    end

    // Monitor và kết thúc ở 100ns
    initial 
        begin
            $monitor ("times = %0t | rst = %0b | clk = %0b | count = %0d",$time, rst, clk, count);

            #100;
            $finish;
        end
endmodule