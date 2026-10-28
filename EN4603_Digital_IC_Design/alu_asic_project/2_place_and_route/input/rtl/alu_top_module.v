
module alu_top_module (
    output [7:0] result_out_out,
    output       flag_carry_out,
    output       flag_zero_out,
    output       scan_out_out,

    input  [7:0] A_in,
    input  [7:0] B_in,
    input  [2:0] op_code_in,
    input        clk_in,
    input        en_in,
    input        SE_in,
    input        scan_in_in,

    inout        VDD,
    inout        VSS,
    inout        VDDIOR,
    inout        VSSIOR
);

    wire [7:0] A_out, B_out;
    wire [2:0] op_code_out;
    wire clk_out, en_out, SE_out, scan_in_core;

    wire [7:0] result_out_temp;
    wire flag_carry_temp, flag_zero_temp, scan_out_core;

    // ---------------- INPUT PADS ----------------
    PADDI A0(.PAD(A_in[0]), .Y(A_out[0]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI A1(.PAD(A_in[1]), .Y(A_out[1]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI A2(.PAD(A_in[2]), .Y(A_out[2]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI A3(.PAD(A_in[3]), .Y(A_out[3]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI A4(.PAD(A_in[4]), .Y(A_out[4]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI A5(.PAD(A_in[5]), .Y(A_out[5]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI A6(.PAD(A_in[6]), .Y(A_out[6]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI A7(.PAD(A_in[7]), .Y(A_out[7]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));

    PADDI B0(.PAD(B_in[0]), .Y(B_out[0]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI B1(.PAD(B_in[1]), .Y(B_out[1]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI B2(.PAD(B_in[2]), .Y(B_out[2]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI B3(.PAD(B_in[3]), .Y(B_out[3]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI B4(.PAD(B_in[4]), .Y(B_out[4]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI B5(.PAD(B_in[5]), .Y(B_out[5]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI B6(.PAD(B_in[6]), .Y(B_out[6]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI B7(.PAD(B_in[7]), .Y(B_out[7]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));

    PADDI op0(.PAD(op_code_in[0]), .Y(op_code_out[0]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI op1(.PAD(op_code_in[1]), .Y(op_code_out[1]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI op2(.PAD(op_code_in[2]), .Y(op_code_out[2]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));

    PADDI clk(.PAD(clk_in), .Y(clk_out), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI en (.PAD(en_in),  .Y(en_out),  .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI SE (.PAD(SE_in),  .Y(SE_out),  .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDI si (.PAD(scan_in_in), .Y(scan_in_core), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));



    // ---------------- OUTPUT PADS ----------------
    PADDO r0(.A(result_out_temp[0]), .PAD(result_out_out[0]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO r1(.A(result_out_temp[1]), .PAD(result_out_out[1]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO r2(.A(result_out_temp[2]), .PAD(result_out_out[2]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO r3(.A(result_out_temp[3]), .PAD(result_out_out[3]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO r4(.A(result_out_temp[4]), .PAD(result_out_out[4]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO r5(.A(result_out_temp[5]), .PAD(result_out_out[5]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO r6(.A(result_out_temp[6]), .PAD(result_out_out[6]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO r7(.A(result_out_temp[7]), .PAD(result_out_out[7]), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));

    PADDO fc(.A(flag_carry_temp), .PAD(flag_carry_out), .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO fz(.A(flag_zero_temp),  .PAD(flag_zero_out),  .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    PADDO so(.A(scan_out_core),   .PAD(scan_out_out),   .VDD(VDD), .VSS(VSS), .VDDIOR(VDDIOR), .VSSIOR(VSSIOR));
    
        // ---------------- CORE ----------------
    alu top1(
        .A(A_out),
        .B(B_out),
        .op_code(op_code_out),
        .clk(clk_out),
        .en(en_out),
        .SE(SE_out),
        .scan_in(scan_in_core),
        .result_out(result_out_temp),
        .flag_carry(flag_carry_temp),
        .flag_zero(flag_zero_temp),
        .scan_out(scan_out_core)
    );

endmodule






