library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Multiplexor is
  Port (
    Ctrl: in std_logic;
    BUS_A, BUS_B: in std_logic_vector(3 downto 0);
    BUS_R: out std_logic_vector(3 downto 0)
  );
end Multiplexor;

architecture Behavioral of Multiplexor is

begin
    process(Ctrl, BUS_A, BUS_B)
    begin
        case Ctrl is
            when '0' => BUS_R <= BUS_A;
            when '1' => BUS_R <= BUS_B;
        end case;              
    end process;

end Behavioral;
