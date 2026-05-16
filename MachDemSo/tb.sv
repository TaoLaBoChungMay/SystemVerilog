`timescale 1ps/1ps
module tb ();
    logic rst, clk;
    logic [3:0] count;

    moduleName uut (
        .rst  (rst),
        .clk  (clk),
        .count(count)
    );

     // dump waveform
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);
    end

    // monitor
    initial begin
        $monitor("time=%0t rst=%0b clk=%0b count=%0d",
                  $time, rst, clk, count);

        #100;
        $finish;
    end
    
    // Tạo xung clk
    initial 
    begin
        clk = 0;
        while (1)
        begin
            #5;
            clk = ~clk;
        end
    end

    // Mỗi 10s đổi xung 1 lần
    initial begin
        rst = 1;
        while (1) begin
            #10;
            rst = 0;

            #5;
            rst = 1;
        end
        
    end
endmodule