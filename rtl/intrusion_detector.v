// ----------------------------------------------------
// Module: intrusion_detector
// Description:
// Detects abnormal jumps in GPS position to identify
// potential intrusion or spoofing events.
// ----------------------------------------------------

module intrusion_detector (
    input clk,
    input rst,
    input [31:0] position,
    output reg alert
);

    reg [31:0] last_position;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            last_position <= 32'd0;
            alert <= 1'b0;
        end else begin
            if (position > last_position + 32'd200)
                alert <= 1'b1;
            else
                alert <= 1'b0;

            last_position <= position;
        end
    end

endmodule

Add intrusion detection module
