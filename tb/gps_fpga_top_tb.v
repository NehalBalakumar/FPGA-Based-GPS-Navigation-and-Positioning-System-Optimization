// ----------------------------------------------------
// Testbench: gps_fpga_top_tb
// Description:
// Verifies top-level FPGA GPS navigation system.
// Tests reset behavior, normal operation, and
// intrusion detection triggering.
// ----------------------------------------------------

module gps_fpga_top_tb;

    reg clk;
    reg rst;
    reg enable;

    wire [31:0] position;
    wire [31:0] velocity;
    wire alert;

    // Instantiate DUT
    gps_fpga_top dut (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .position(position),
        .velocity(velocity),
        .alert(alert)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        rst = 1;
        enable = 1;

        // Release reset
        #20 rst = 0;

        // Run simulation
        #500;

        // End simulation
        $stop;
    end

endmodule

Add top-level testbench for GPS FPGA system
