//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Mon Jun 30 17:24:21 2025
//Host        : DESKTOP-NP8MBRU running 64-bit major release  (build 9200)
//Command     : generate_target Full_adder_wrapper.bd
//Design      : Full_adder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Full_adder_wrapper
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

  wire A;
  wire A1;
  wire A2;
  wire A3;
  wire B1;
  wire B2;

  Full_adder Full_adder_i
       (.A(A),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B1(B1),
        .B2(B2));
endmodule
