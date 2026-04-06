module top (
    /** Input Ports */
    /** Output Ports */

    input wire[3:0] = bcd
    Output wire[6:0] = 7seg
);

/** Logic */
always @(bcd)
    assign 7seg[0] = (!bcd[1] & !bcd[3]) | (bcd[1] & bcd[3]) | (bcd[0] | !bcd[2]) | (!bcd[0] & !bcd[1] & bcd[2]) | (bcd[0] & !bcd[3])
    assign 7seg[1] = (!bcd[1] & !bcd[2]) | (bcd[1] & !bcd[3]) | (!bcd[0] & bcd[2] & bcd[3])
    assign 7seg[2] = (bcd[3]) | (!bcd[0] & ! bcd[2]) | (!bcd[1] & !bcd[2]) & (!bcd[0] & bcd[1])
    assign 7seg[3] = (!bcd[0] & !bcd[1] & !bcd[3]) | (bcd[0] & !bcd[2] & !bcd[3]) | (!bcd[1] & bcd[2] & bcd[3]) | (bcd[1] & !bcd[2] & bcd[3]) | (bcd[1] & bcd[2] & !bcd[3])
    assign 7seg[4] = (!bcd[1] & bcd[2]) | (bcd[0] & bcd[1]) | (!bcd[0] & !bcd[1] & bcd[3]) | (bcd[1] & !bcd[2] & bcd[3]) | (bcd[2] & !bcd[3])
    assign 7seg[5] = (!bcd[0] & !bcd[0]) | (bcd[1] & bcd[3]) | (bcd[0] & bcd[2])
    assign 7seg[6] = (!bcd[0] & bcd[3]) | (bcd[0] & !bcd[3]) | (bcd[2] & bcd[3]) | (bcd[1] & bcd[3]) | (bcd[1] & bcd[2])
endmodule
