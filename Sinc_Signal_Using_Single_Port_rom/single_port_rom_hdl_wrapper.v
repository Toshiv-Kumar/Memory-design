
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Nov  2 18:00:56 2025
//Host        : TUFGamingFX505DT running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK_0,
    douta_0,
    ena_0);
  input CLK_0;
  output [17:0]douta_0;
  input ena_0;

  wire CLK_0;
  wire [17:0]douta_0;
  wire ena_0;

  design_1 design_1_i
       (.CLK_0(CLK_0),
        .douta_0(douta_0),
        .ena_0(ena_0));
endmodule
