module fir_filter (
    input clk,
    input reset,
    input signed [7:0] x_in,            // Input sample
    output reg signed [15:0] y_out      // Filtered output
);

    parameter N = 4; // Number of taps

    // Filter coefficients (signed 8-bit)
    // Example: Low-pass filter coefficients
    reg signed [7:0] coeff [0:N-1];
    initial begin
        coeff[0] = 8'd2;
        coeff[1] = 8'd4;
        coeff[2] = 8'd4;
        coeff[3] = 8'd2;
    end

    // Shift register to store past inputs
    reg signed [7:0] shift_reg [0:N-1];

    integer i;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < N; i = i + 1)
                shift_reg[i] <= 0;
            y_out <= 0;
        end else begin
            // Shift input samples
            for (i = N-1; i > 0; i = i - 1)
                shift_reg[i] <= shift_reg[i-1];
            shift_reg[0] <= x_in;

            // Multiply and accumulate
            y_out <= 0;
            for (i = 0; i < N; i = i + 1)
                y_out <= y_out + shift_reg[i] * coeff[i];
        end
    end
endmodule




