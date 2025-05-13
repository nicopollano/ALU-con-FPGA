--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue May  6 02:13:40 2025
--Host        : DESKTOP-PV5QM8Q running 64-bit major release  (build 9200)
--Command     : generate_target SumadorRestador_wrapper.bd
--Design      : SumadorRestador_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SumadorRestador_wrapper is
end SumadorRestador_wrapper;

architecture STRUCTURE of SumadorRestador_wrapper is
  component SumadorRestador is
  end component SumadorRestador;
begin
SumadorRestador_i: component SumadorRestador
 ;
end STRUCTURE;
