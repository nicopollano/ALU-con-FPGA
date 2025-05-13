--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue May  6 02:24:21 2025
--Host        : DESKTOP-PV5QM8Q running 64-bit major release  (build 9200)
--Command     : generate_target BloqueSumadorRestador_wrapper.bd
--Design      : BloqueSumadorRestador_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BloqueSumadorRestador_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    C2 : in STD_LOGIC;
    CRY : out STD_LOGIC;
    OVF : out STD_LOGIC;
    R_SumadorRestador : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end BloqueSumadorRestador_wrapper;

architecture STRUCTURE of BloqueSumadorRestador_wrapper is
  component BloqueSumadorRestador is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    C2 : in STD_LOGIC;
    OVF : out STD_LOGIC;
    R_SumadorRestador : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CRY : out STD_LOGIC
  );
  end component BloqueSumadorRestador;
begin
BloqueSumadorRestador_i: component BloqueSumadorRestador
     port map (
      A(3 downto 0) => A(3 downto 0),
      B(3 downto 0) => B(3 downto 0),
      C2 => C2,
      CRY => CRY,
      OVF => OVF,
      R_SumadorRestador(3 downto 0) => R_SumadorRestador(3 downto 0)
    );
end STRUCTURE;
