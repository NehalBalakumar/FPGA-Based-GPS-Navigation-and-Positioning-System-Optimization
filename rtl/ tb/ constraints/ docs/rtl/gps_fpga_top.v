// ----------------------------------------------------
// Module: gps_fpga_top
// Description:
// Top-level FPGA module for GPS navigation processing
// system. Integrates navigation logic, intrusion
// detection, and master control.
// ----------------------------------------------------

module gps_fpga_top (
    input clk,
    input rst,
    input enable,
    output [31:0] position,
    output [31:0] velocity,
    output alert
);

    wire [31:0] pos_raw;
    wire [31:0] vel_raw;

    // GPS data interface (simulated)
    gps_input_iface gps_if (
        .clk(clk),
        .rst(rst),
        .position(pos_raw),
        .velocity(vel_raw)
    );

    // Navigation processor
    nav_processor nav (
        .clk(clk),
        .rst(rst),
        .pos_in(pos_raw),
        .vel_in(vel_raw),
        .pos_out(position),
        .vel_out(velocity)
    );

    // Intrusion detection
    intrusion_detector det (
        .clk(clk),
        .rst(rst),
        .position(position),
        .alert(alert)
    );

endmodule

Add top-level FPGA GPS module
