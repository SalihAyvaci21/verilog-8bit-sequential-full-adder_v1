//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Mon Jun 30 17:24:21 2025
//Host        : DESKTOP-NP8MBRU running 64-bit major release  (build 9200)
//Command     : generate_target Full_adder.bd
//Design      : Full_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Full_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Full_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Full_adder.hwdef" *) 
module Full_adder
   (A,
    A1,
    A2,
    A3,
    B1,
    B2);
  input A;
  input A1;
  input A2;
  input A3;
  input B1;
  input B2;

  wire A1_1;
  wire A1_2;
  wire B1_1;
  wire B1_2;
  wire Net;
  wire Net1;
  wire and_g_0_i_g;
  wire and_g_0_i_g1;
  wire and_g_1_i_g;
  wire and_g_1_i_g1;
  wire and_g_2_i_g;
  wire and_g_2_i_g1;

  assign A1_1 = A1;
  assign A1_2 = A3;
  assign B1_1 = B1;
  assign B1_2 = B2;
  assign Net = A;
  assign Net1 = A2;
  Full_adder_Xor_g_0_1 Xor_g_0
       (.i_a(Net),
        .i_b(A1_1),
        .i_k(B1_1));
  Full_adder_Xor_g_0_2 Xor_g_1
       (.i_a(Net1),
        .i_b(A1_2),
        .i_k(B1_2));
  Full_adder_and_g_0_0 and_g_0
       (.i_d(A1_1),
        .i_f(B1_1),
        .i_g(and_g_0_i_g));
  Full_adder_and_g_0_1 and_g_1
       (.i_d(Net),
        .i_f(B1_1),
        .i_g(and_g_1_i_g));
  Full_adder_and_g_0_2 and_g_2
       (.i_d(Net),
        .i_f(A1_1),
        .i_g(and_g_2_i_g));
  Full_adder_and_g_0_3 and_g_3
       (.i_d(A1_2),
        .i_f(B1_2),
        .i_g(and_g_0_i_g1));
  Full_adder_and_g_1_0 and_g_4
       (.i_d(Net1),
        .i_f(B1_2),
        .i_g(and_g_1_i_g1));
  Full_adder_and_g_2_0 and_g_5
       (.i_d(Net1),
        .i_f(A1_2),
        .i_g(and_g_2_i_g1));
  Full_adder_or_g_0_0 or_g_0
       (.i_a(and_g_2_i_g),
        .i_b(and_g_1_i_g),
        .i_c(and_g_0_i_g));
  Full_adder_or_g_0_1 or_g_1
       (.i_a(and_g_2_i_g1),
        .i_b(and_g_1_i_g1),
        .i_c(and_g_0_i_g1));
endmodule
