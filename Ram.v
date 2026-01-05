// Simple Synchronous RAM Design
// Read and Write Operations

module RAM (
    input clk,
    input we,                 // Write enable
    input [3:0] addr,         // Address
    input [7:0] data_in,      // Data input
    output reg [7:0] data_out // Data output
);

reg [7:0] memory [15:0];     // 16x8 RAM

always @(posedge clk) begin
    if (we)
        memory[addr] <= data_in;   // Write operation
    else
        data_out <= memory[addr];  // Read operation
end

endmodule
