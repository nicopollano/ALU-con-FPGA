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
    signal ovfTemp: std_ulogic;
    signal cryTemp: std_ulogic;
begin
    process(C2, A, B)
    variable tempSum: unsigned(4 downto 0);
    variable tempRes: signed(4 downto 0);
    begin
        if(C2 = '0') then
            tempSum := ('0' & unsigned(A)) + ('0' & unsigned(B));
            cryTemp <= tempSum(4);
            R <= std_logic_vector(tempSum(3 downto 0));
        else
            tempRes := signed('0' & A) + signed('0' & B);
            if ((A(3) = B(3)) and (A(3) /= tempRes(3))) then
                ovfTemp <= '1';
            else
                ovfTemp <= '0';
            end if;
            R <= std_logic_vector(tempRes(3 downto 0));
        end if;
    end process;
    
    OVF <= ovfTemp;
    CRY <= cryTemp;
    
end Behavioral;