library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Saturador is
    Port(
        BUS_R_in: in std_logic_vector(3 downto 0);
        BUS_R_out: out std_logic_vector(3 downto 0);
        Ovf: in std_logic;
        Ctrl: in std_logic
    );
end Saturador;

architecture Behavioral of Saturador is
    signal Result: std_logic_vector(3 downto 0) := (others => '0');
    
    component Multiplexor
        Port (
            Ctrl: in std_logic;
            BUS_A, BUS_B: in std_logic_vector(3 downto 0);
            BUS_R: out std_logic_vector(3 downto 0)
          );
    end component;
    
begin
    
    process(Ctrl, Ovf, BUS_R_in)
    begin
        if (Ctrl = '1' and Ovf = '1') then

            if(BUS_R_in(3) = '1') then
                Result <= "1111";
            else
                Result <= "0000"; 
            end if;
        end if;
    end process;
    
    
    Multiplexor_inst : Multiplexor
        port map(
            Ctrl => Ctrl,
            BUS_A => Result,
            BUS_B => BUS_R_in,
            BUS_R => BUS_R_out
        );
        
end Behavioral;
