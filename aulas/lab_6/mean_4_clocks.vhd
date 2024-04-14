library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mean_4_clocks is
    generic (
        W       :       integer := 4
    );
    port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0)
    );
end mean_4_clocks;

architecture arch of mean_4_clocks is
begin
    process(CLK, RESET) is
        variable var1 : unsigned(W - 1 downto 0);
        variable var2 : unsigned(W - 1 downto 0);
        variable var3 : unsigned(W - 1 downto 0);
        variable var4 : unsigned(W - 1 downto 0);
		  variable sum  : unsigned(W - 1 downto 0);
    begin
        if (RESET = '1') then
            var1 := to_unsigned(0,W);
            var2 := to_unsigned(0,W);
            var3 := to_unsigned(0,W);
            var4 := to_unsigned(0,W);
        elsif (rising_edge(CLK)) then
            var1 := unsigned("00" & INPUT(W-1 downto 2));
            var2 := var1;
            var3 := var2;
            var4 := var3;
        end if;
        
        sum := ((var1 + var2)+(var3 + var4));--Unica alterção de soma
		  
		  OUTPUT <= std_logic_vector(sum srl 2); -- divisão por 4
		  
    end process;
    
end arch;