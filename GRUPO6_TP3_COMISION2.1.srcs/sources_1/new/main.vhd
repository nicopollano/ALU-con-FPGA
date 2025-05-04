library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port (
    A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    R: out std_logic_vector(3 downto 0);
    C2: in std_logic;
    OVF: out std_logic;
    CRY: out std_logic
  );
end main;

architecture Behavioral of main is
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
    
    begin
    SumadorRestador_inst : SumadorRestador
        port map(
            BUS_A => A,
            BUS_B => B,
            BUS_R => R,
            Ctrl  => C2,
            Ovf   => OVF,
            Cry   => CRY
        );
end Behavioral;