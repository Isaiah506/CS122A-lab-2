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
input wire [3:0] bcd_tb;
output logic [6:0] seg7_tb;

/** declare module(s) below */
top dut                    // declare an inst of top called "dut" (device under test)
(
    /** hook up tb signals to dut signals */          
    // connect dut's clk wire to clk_tb
    .bcd(bcd_tb),
    .seg7(seg7_tb)
);

localparam CLK_PERIOD = 2/** clk period */;
always #(CLK_PERIOD/2);          // toggle clk_tb every #(CLK_PERIOD/2) ticks

initial begin
    $dumpfile("build/top.vcd"); // intermediate file for waveform generation
    $dumpvars(0, top_tb);       // capture all signals under top_tb
end

initial begin
    /** testbench logic goes below */
    assign bcd_tb = 4'd0;
    #(CLK_PERIOD*3);    // waits for CLK_PERIOD * 3 ticks
    $finish;            // end simulation, otherwise it runs indefinitely
end

endmodule
