        module mds (
            input logic clk, rst,
            output logic signed [4:0] count
        );
        // khởi tạo giá trị count ban đầu
            always @(posedge clk or negedge rst) begin
                if (rst == 0)
                    count <= -5;
                else 
                    count <= count +1;
            end
        endmodule