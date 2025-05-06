-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sun May  4 13:19:39 2025
-- Host        : DESKTOP-PV5QM8Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/nico_/Documents/Xilinc/GRUPO6_TP3_COMISION2.1/GRUPO6_TP3_COMISION2.1.sim/sim_1/synth/func/xsim/main_func_synth.vhd
-- Design      : main
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticpg236-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    C2 : in STD_LOGIC;
    OVF : out STD_LOGIC;
    CRY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main : entity is true;
end main;

architecture STRUCTURE of main is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal C2_IBUF : STD_LOGIC;
  signal C2_IBUF_BUFG : STD_LOGIC;
  signal CRY_OBUF : STD_LOGIC;
  signal OVF_OBUF : STD_LOGIC;
  signal R_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal ovfTemp_reg_i_1_n_0 : STD_LOGIC;
  signal tempSum : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \tempSum_reg[4]_i_1_n_0\ : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of cryTemp_reg : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of cryTemp_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of cryTemp_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \n_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \n_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \n_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \n_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \n_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \n_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \n_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \n_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \n_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \n_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \n_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of ovfTemp_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of ovfTemp_reg : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \tempSum_reg[4]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \tempSum_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \tempSum_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \tempSum_reg[4]_i_1\ : label is "soft_lutpair1";
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
C2_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => C2_IBUF,
      O => C2_IBUF_BUFG
    );
C2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => C2,
      O => C2_IBUF
    );
CRY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => CRY_OBUF,
      O => CRY
    );
OVF_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => OVF_OBUF,
      O => OVF
    );
\R_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(0),
      O => R(0)
    );
\R_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(1),
      O => R(1)
    );
\R_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(2),
      O => R(2)
    );
\R_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_OBUF(3),
      O => R(3)
    );
cryTemp_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => tempSum(4),
      G => C2_IBUF_BUFG,
      GE => '1',
      Q => CRY_OBUF
    );
\n_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \n_reg[0]_i_1_n_0\,
      G => C2_IBUF_BUFG,
      GE => '1',
      Q => R_OBUF(0)
    );
\n_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
      O => \n_reg[0]_i_1_n_0\
    );
\n_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \n_reg[1]_i_1_n_0\,
      G => C2_IBUF_BUFG,
      GE => '1',
      Q => R_OBUF(1)
    );
\n_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
      I2 => B_IBUF(1),
      I3 => A_IBUF(1),
      O => \n_reg[1]_i_1_n_0\
    );
\n_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \n_reg[2]_i_1_n_0\,
      G => C2_IBUF_BUFG,
      GE => '1',
      Q => R_OBUF(2)
    );
\n_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => B_IBUF(0),
      I1 => A_IBUF(0),
      I2 => A_IBUF(1),
      I3 => B_IBUF(1),
      I4 => B_IBUF(2),
      I5 => A_IBUF(2),
      O => \n_reg[2]_i_1_n_0\
    );
\n_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \n_reg[3]_i_1_n_0\,
      G => C2_IBUF_BUFG,
      GE => '1',
      Q => R_OBUF(3)
    );
\n_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n_reg[3]_i_2_n_0\,
      I1 => B_IBUF(3),
      I2 => A_IBUF(3),
      O => \n_reg[3]_i_1_n_0\
    );
\n_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => B_IBUF(2),
      I1 => A_IBUF(2),
      I2 => B_IBUF(0),
      I3 => A_IBUF(0),
      I4 => A_IBUF(1),
      I5 => B_IBUF(1),
      O => \n_reg[3]_i_2_n_0\
    );
ovfTemp_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ovfTemp_reg_i_1_n_0,
      G => C2_IBUF_BUFG,
      GE => '1',
      Q => OVF_OBUF
    );
ovfTemp_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => R_OBUF(3),
      I1 => B_IBUF(3),
      I2 => A_IBUF(3),
      O => ovfTemp_reg_i_1_n_0
    );
\tempSum_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => \tempSum_reg[4]_i_1_n_0\,
      G => C2_IBUF_BUFG,
      GE => '1',
      Q => tempSum(4)
    );
\tempSum_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B_IBUF(3),
      I1 => A_IBUF(3),
      I2 => \n_reg[3]_i_2_n_0\,
      O => \tempSum_reg[4]_i_1_n_0\
    );
end STRUCTURE;
