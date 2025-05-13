library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port (
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        R: out std_logic_vector(3 downto 0);
        C1: in std_logic;
        C2: in std_logic;
        C3: in std_logic;
        C4: in std_logic;
        OVF: out std_logic;
        CRY: out std_logic
      );
end main;

architecture Behavioral of main is
    signal R_internal: std_logic_vector(3 downto 0);
    signal R_saturator : std_logic_vector(3 downto 0);
    signal OVF_internal: std_logic;
    signal CRY_internal: std_logic;
    
    component SumadorRestador 
        Port (
            BUS_A: in std_logic_vector(3 downto 0);
            BUS_B: in std_logic_vector(3 downto 0);
            BUS_R: out std_logic_vector(3 downto 0);
            Ctrl: in std_logic;
            Ovf: out std_logic;
            Cry: out std_logic
        );
    end component;
    
    component Saturador
        Port(
            BUS_R_in: in std_logic_vector(3 downto 0);
            BUS_R_out: out std_logic_vector(3 downto 0);
            Ovf: in std_logic;
            Ctrl: in std_logic
        );
    end component;
    
    component ANDBitaBit
        Port (
            BUS_A: in std_logic_vector(3 downto 0);
            BUS_B: in std_logic_vector(3 downto 0);
            Res: out std_logic_vector(3 downto 0)
          );
    end component;
    
    component ORBitaBit
        Port (
            BUS_A: in std_logic_vector(3 downto 0);
            BUS_B: in std_logic_vector(3 downto 0);
            Res: out std_logic_vector(3 downto 0)
          );
    end component;
    
    component Multiplexor
        Port (
            Ctrl: in std_logic;
            BUS_A, BUS_B: in std_logic_vector(3 downto 0);
            BUS_R: out std_logic_vector(3 downto 0)
          );
    end component;    
    signal R_SumaRestat: std_logic_vector(3 downto 0);
    signal R_ANDBitaBit: std_logic_vector(3 downto 0);
    signal R_ORBitaBit: std_logic_vector(3 downto 0);
    signal R_MultipexorANDOR: std_logic_vector(3 downto 0);
    
begin
    SumadorRestador_inst : SumadorRestador
        port map(
            BUS_A => A,
            BUS_B => B,
            BUS_R => R_internal,
            Ctrl  => C2,
            Ovf   => OVF_internal,
            Cry   => CRY_internal
        );

    Saturador_inst: Saturador
        port map (
            BUS_R_in => R_internal,
            BUS_R_out => R_saturator,
            Ovf   => OVF_internal,
            Ctrl  => C3
        );
    
    ANDBitaBit_inst: ANDBitaBit
        port map (
            BUS_A => A,
            BUS_B => B,
            Res   => R_ANDBitaBit
        );
    
    ORBitaBit_inst: ORBitaBit
        port map (
            BUS_A => A,
            BUS_B => B,
            Res   => R_ORBitaBit
        );
  
    Multiplexor_ANDOR_inst: Multiplexor
        port map (
            Ctrl => C1,
            BUS_A => A,
            BUS_B => B,
            BUS_R => R_MultipexorANDOR
        );  
    
    MultiplexorResult_inst: Multiplexor
        port map (
            Ctrl => C4,
            BUS_A => R_saturator,
            BUS_B => R_MultipexorANDOR,
            BUS_R => R
        );
        
    OVF <= OVF_internal;
    CRY <= CRY_internal;
end Behavioral;
