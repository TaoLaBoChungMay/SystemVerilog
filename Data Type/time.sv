`timescale 1ns/1ns
module timedata ();

    time preTime, currentTime;

    initial begin
        
        $dumpfile("time.vcd");
        $dumpvars(0, timedata);
        preTime = 1ns;
    currentTime = 10ns;
    #10;
    $display("%0t", currentTime - preTime);
    end
    
endmodule