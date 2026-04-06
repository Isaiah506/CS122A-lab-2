module top (
    /** Input Ports */
    /** Output Ports */

    input wire[3:0] bcd,
    output logic [6:0] seg7
);

/** Logic */
    always @(bcd) begin
        seg7[0] <= (!bcd[1] & !bcd[3]) | (bcd[1] & bcd[3]) | (bcd[0] | !bcd[2]) | (!bcd[0] & !bcd[1] & bcd[2]) | (bcd[0] & !bcd[3]);
        seg7[1] <= (!bcd[1] & !bcd[2]) | (bcd[1] & !bcd[3]) | (!bcd[0] & bcd[2] & bcd[3]);
        seg7[2] <= (bcd[3]) | (!bcd[0] & ! bcd[2]) | (!bcd[1] & !bcd[2]) & (!bcd[0] & bcd[1]);
        seg7[3] <= (!bcd[0] & !bcd[1] & !bcd[3]) | (bcd[0] & !bcd[2] & !bcd[3]) | (!bcd[1] & bcd[2] & bcd[3]) | (bcd[1] & !bcd[2] & bcd[3]) | (bcd[1] & bcd[2] & !bcd[3]);
        seg7[4] <= (!bcd[1] & bcd[2]) | (bcd[0] & bcd[1]) | (!bcd[0] & !bcd[1] & bcd[3]) | (bcd[1] & !bcd[2] & bcd[3]) | (bcd[2] & !bcd[3]);
        seg7[5] <= (!bcd[0] & !bcd[0]) | (bcd[1] & bcd[3]) | (bcd[0] & bcd[2]);
        seg7[6] <= (!bcd[0] & bcd[3]) | (bcd[0] & !bcd[3]) | (bcd[2] & bcd[3]) | (bcd[1] & bcd[3]) | (bcd[1] & bcd[2]);
    end
endmodule
