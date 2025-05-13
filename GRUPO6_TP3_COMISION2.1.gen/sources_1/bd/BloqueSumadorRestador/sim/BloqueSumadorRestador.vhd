--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue May  6 02:24:21 2025
--Host        : DESKTOP-PV5QM8Q running 64-bit major release  (build 9200)
--Command     : generate_target BloqueSumadorRestador.bd
--Design      : BloqueSumadorRestador
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BloqueSumadorRestador is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    C2 : in STD_LOGIC;
    CRY : out STD_LOGIC;
    OVF : out STD_LOGIC;
    R_SumadorRestador : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of BloqueSumadorRestador : entity is "BloqueSumadorRestador,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BloqueSumadorRestador,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of BloqueSumadorRestador : entity is "BloqueSumadorRestador.hwdef";
end BloqueSumadorRestador;

architecture STRUCTURE of BloqueSumadorRestador is
  component BloqueSumadorRestador_SumadorRestador_0_0 is
  port (
    BUS_A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BUS_B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BUS_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Ctrl : in STD_LOGIC;
    Ovf : out STD_LOGIC;
    Cry : out STD_LOGIC
  );
  end component BloqueSumadorRestador_SumadorRestador_0_0;
  signal A_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal C2_1 : STD_LOGIC;
  signal SumadorRestador_0_BUS_R : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SumadorRestador_0_Cry : STD_LOGIC;
  signal SumadorRestador_0_Ovf : STD_LOGIC;
begin
  A_1(3 downto 0) <= A(3 downto 0);
  B_1(3 downto 0) <= B(3 downto 0);
  C2_1 <= C2;
  CRY <= SumadorRestador_0_Cry;
  OVF <= SumadorRestador_0_Ovf;
  R_SumadorRestador(3 downto 0) <= SumadorRestador_0_BUS_R(3 downto 0);
SumadorRestador_0: component BloqueSumadorRestador_SumadorRestador_0_0
     port map (
      BUS_A(3 downto 0) => A_1(3 downto 0),
      BUS_B(3) => C2_1,
      BUS_B(2) => C2_1,
      BUS_B(1) => C2_1,
      BUS_B(0) => C2_1,
      BUS_R(3 downto 0) => SumadorRestador_0_BUS_R(3 downto 0),
      Cry => SumadorRestador_0_Cry,
      Ctrl => B_1(0),
      Ovf => SumadorRestador_0_Ovf
    );
end STRUCTURE;
