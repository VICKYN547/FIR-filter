module tb_fir_filter;

    reg clk, reset;
    reg signed [7:0] x_in;
    wire signed [15:0] y_out;

    fir_filter uut (
        .clk(clk),
        .reset(reset),
        .x_in(x_in),
        .y_out(y_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    integer i;
    reg signed [7:0] input_samples [0:15];
    initial begin
        // Initialize input samples (example step signal)
        input_samples[0] = 8'd0;
        input_samples[1] = 8'd10;
        input_samples[2] = 8'd20;
        input_samples[3] = 8'd30;
        input_samples[4] = 8'd40;
        input_samples[5] = 8'd40;
        input_samples[6] = 8'd30;
        input_samples[7] = 8'd20;
        input_samples[8] = 8'd10;
        input_samples[9] = 8'd0;
        input_samples[10] = -8'd10;
        input_samples[11] = -8'd20;
        input_samples[12] = -8'd30;
        input_samples[13] = -8'd40;
        input_samples[14] = -8'd40;
        input_samples[15] = -8'd30;

        $dumpfile("fir.vcd");
        $dumpvars(0, tb_fir_filter);

        reset = 1; x_in = 0;
        #10 reset = 0;

        for (i = 0; i < 16; i = i + 1) begin
            x_in = input_samples[i];
            #10;
        end

        #50 $finish;
    end

endmodule
