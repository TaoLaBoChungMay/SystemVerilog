module moduleName (
    input logic rst,
    input logic clk,
    output logic [3:0] count
);
    always @(negedge clk ) begin
        if (rst == 0)
            count <= 0;
        else
            count <= count +1;
    end
endmodule