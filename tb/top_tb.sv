`include "src/top.sv"
`timescale 1ns/1ps         // Set tick to 1ns. Set sim resolution to 1ps.

/**
 * Note:
 *  The TB below is only an example of a testbench written in SV.
 *  Adapt this for your lab assignments as you see fit.
 *  An example clk signal has been added to show what a signal decl and usage looks like.
 *     You are welcome to delete the clk signal if it's not needed.
 *     For instance, purely combinational circuits do not need clks.
 *     So for labs without sequential elements, you can remove them.
 */

module top_tb;

/** declare tb signals below */
logic clk_tb;
logic[7:0] seg7_tb;
reg[3:0] val1_tb;
reg[3:0] val2_tb;

/** declare module(s) below */
top dut                    // declare an inst of top called "dut" (device under test)
(
    /** hook up tb signals to dut signals */
    .clk(clk_tb),          // connect dut's clk wire to clk_tb
    .val1(val1_tb),
    .val2(val2_tb),
    .seg7(seg7_tb)
);


localparam CLK_PERIOD = 10/** clk period */;
always #(CLK_PERIOD/2) clk_tb=~clk_tb;          // toggle clk_tb every #(CLK_PERIOD/2) ticks

initial begin
    $dumpfile("build/top.vcd"); // intermediate file for waveform generation
    $dumpvars(0, top_tb);       // capture all signals under top_tb
end

initial begin
    /** testbench logic goes below */
    clk_tb<=1'b1;       // sets clk_tb to 1
    #(CLK_PERIOD*3);    // waits for CLK_PERIOD * 3 ticks
    val1_tb <= 0;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 1;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 2;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 3;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 4;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 5;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 6;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 7;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 8;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 9;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 10;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 11;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 12;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 13;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 14;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    val1_tb <= 15;
    val2_tb <= 0;
    #(CLK_PERIOD*3);
    
    val1_tb <= 0;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 1;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 2;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 3;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 4;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 5;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 6;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 7;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 8;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 9;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 10;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 11;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 12;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 13;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 14;
    val2_tb <= 5;
    #(CLK_PERIOD*3);
    val1_tb <= 15;
    val2_tb <= 5;
    #(CLK_PERIOD*3);

    val1_tb <= 0;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 1;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 2;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 3;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 4;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 5;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 6;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 7;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 8;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 9;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 10;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 11;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 12;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 13;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 14;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    val1_tb <= 15;
    val2_tb <= 15;
    #(CLK_PERIOD*3);
    $finish;            // end simulation, otherwise it runs indefinitely
end

endmodule
