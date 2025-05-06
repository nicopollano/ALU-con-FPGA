library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port (
    A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    R: out std_logic_vector(3 downto 0);
    C2: in std_logic;
    C3: in std_logic;
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
    
    R <= R_saturator;
    OVF <= OVF_internal;
    CRY <= CRY_internal;
end Behavioral;
