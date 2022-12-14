Library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;


entity counter is
	port(
		in_freq : in std_logic;
		raz_n : in std_logic;
		cnt : out STD_LOGIC_VECTOR (7 downto 0));
end counter;

architecture arc of counter is
	signal cpt : STD_LOGIC_VECTOR (7 downto 0);

begin 
	
	process(in_freq, raz_n) is
		--variable cpt : STD_LOGIC_VECTOR (7 downto 0);
	begin
	if raz_n = '1' then
      cpt <= "00000000";
	elsif rising_edge(in_freq) then
      cpt <= STD_LOGIC_VECTOR(unsigned(cpt) + 1);
      --cnt <= cpt ;
      
	end if;
	end process ;
	cnt <= cpt ;
	
end arc;