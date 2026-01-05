// Testbench for RAM Design

module RAM_tb;

reg clk;
reg we;
reg [3:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;

RAM uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    // Write operation
    we = 1;
    addr = 4'b0001;
    data_in = 8'b10101010;
    #10;

    // Read operation
    we = 0;
    addr = 4'b0001;
    #10;

    $stop;
end

endmodule
