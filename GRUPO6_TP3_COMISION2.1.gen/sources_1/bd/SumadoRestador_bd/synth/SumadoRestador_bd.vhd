--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Thu May  8 14:05:59 2025
--Host        : DESKTOP-PV5QM8Q running 64-bit major release  (build 9200)
--Command     : generate_target SumadoRestador_bd.bd
--Design      : SumadoRestador_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SumadoRestador_bd is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Cin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Cout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Cry : out STD_LOGIC_VECTOR ( 0 to 0 );
    R : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of SumadoRestador_bd : entity is "SumadoRestador_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SumadoRestador_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SumadoRestador_bd : entity is "SumadoRestador_bd.hwdef";
end SumadoRestador_bd;

architecture STRUCTURE of SumadoRestador_bd is
  component SumadoRestador_bd_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component SumadoRestador_bd_util_vector_logic_0_0;
  component SumadoRestador_bd_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component SumadoRestador_bd_util_vector_logic_0_1;
  component SumadoRestador_bd_util_vector_logic_2_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component SumadoRestador_bd_util_vector_logic_2_1;
  component SumadoRestador_bd_util_vector_logic_2_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component SumadoRestador_bd_util_vector_logic_2_2;
  component SumadoRestador_bd_util_vector_logic_2_3 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component SumadoRestador_bd_util_vector_logic_2_3;
  component SumadoRestador_bd_util_vector_logic_2_4 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component SumadoRestador_bd_util_vector_logic_2_4;
  component SumadoRestador_bd_util_vector_logic_2_5 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component SumadoRestador_bd_util_vector_logic_2_5;
  component SumadoRestador_bd_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component SumadoRestador_bd_xlslice_0_3;
  signal A_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Cin_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_vector_logic_3_Res : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_vector_logic_4_Res : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_vector_logic_5_Res : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_vector_logic_6_Res : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  A_1(3 downto 0) <= A(3 downto 0);
  B_1(3 downto 0) <= B(3 downto 0);
  Cin_1(3 downto 0) <= Cin(3 downto 0);
  Cout(3 downto 0) <= util_vector_logic_6_Res(3 downto 0);
  Cry(0) <= xlslice_0_Dout(0);
  R(3 downto 0) <= util_vector_logic_1_Res(3 downto 0);
util_vector_logic_0: component SumadoRestador_bd_util_vector_logic_0_0
     port map (
      Op1(3 downto 0) => A_1(3 downto 0),
      Op2(3 downto 0) => B_1(3 downto 0),
      Res(3 downto 0) => util_vector_logic_0_Res(3 downto 0)
    );
util_vector_logic_1: component SumadoRestador_bd_util_vector_logic_0_1
     port map (
      Op1(3 downto 0) => util_vector_logic_0_Res(3 downto 0),
      Op2(3 downto 0) => Cin_1(3 downto 0),
      Res(3 downto 0) => util_vector_logic_1_Res(3 downto 0)
    );
util_vector_logic_2: component SumadoRestador_bd_util_vector_logic_2_1
     port map (
      Op1(3 downto 0) => A_1(3 downto 0),
      Op2(3 downto 0) => B_1(3 downto 0),
      Res(3 downto 0) => util_vector_logic_2_Res(3 downto 0)
    );
util_vector_logic_3: component SumadoRestador_bd_util_vector_logic_2_2
     port map (
      Op1(3 downto 0) => B_1(3 downto 0),
      Op2(3 downto 0) => Cin_1(3 downto 0),
      Res(3 downto 0) => util_vector_logic_3_Res(3 downto 0)
    );
util_vector_logic_4: component SumadoRestador_bd_util_vector_logic_2_3
     port map (
      Op1(3 downto 0) => A_1(3 downto 0),
      Op2(3 downto 0) => Cin_1(3 downto 0),
      Res(3 downto 0) => util_vector_logic_4_Res(3 downto 0)
    );
util_vector_logic_5: component SumadoRestador_bd_util_vector_logic_2_4
     port map (
      Op1(3 downto 0) => util_vector_logic_2_Res(3 downto 0),
      Op2(3 downto 0) => util_vector_logic_3_Res(3 downto 0),
      Res(3 downto 0) => util_vector_logic_5_Res(3 downto 0)
    );
util_vector_logic_6: component SumadoRestador_bd_util_vector_logic_2_5
     port map (
      Op1(3 downto 0) => util_vector_logic_5_Res(3 downto 0),
      Op2(3 downto 0) => util_vector_logic_4_Res(3 downto 0),
      Res(3 downto 0) => util_vector_logic_6_Res(3 downto 0)
    );
xlslice_0: component SumadoRestador_bd_xlslice_0_3
     port map (
      Din(3 downto 0) => util_vector_logic_6_Res(3 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
