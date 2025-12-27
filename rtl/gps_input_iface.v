// ----------------------------------------------------
// Module: gps_input_iface
// Description:
// Simulates GPS position and velocity data for FPGA
// navigation processing.
// ----------------------------------------------------

module gps_input_iface (
    input clk,
    input rst,
    output reg [31:0] position,
    output reg [31:0] velocity
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            position <= 32'd1000;
            velocity <= 32'd5;
        end else begin
            position <= position + velocity;
        end
    end

endmodule

Add simulated GPS input interface module
