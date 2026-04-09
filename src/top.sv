`include "src/adder.sv"
`include "src/decoder.sv"

module top (
    input logic clk,
    input wire[3:0] val1,
    input wire[3:0] val2,
    output logic [7:0] seg7 
);
/** Logic */
reg [4:0] tmp_res;

assign seg7[0] = tmp_res[4];

adder top_adder(
    .val1(val1),
    .val2(val2),
    .res(tmp_res)
);

decoder top_decoder(
    .bcd(tmp_res[3:0]),
    .seg7(seg7[7:1])
);

    
endmodule
