library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity mode_fonctionnement is
port ( 	clk, continu, start_stop, internal_reset: in std_logic;
		data_in : in std_logic_vector (7 downto 0);
		data_valid : out std_logic;
		data_anemometre : out std_logic_vector (7 downto 0));
end mode_fonctionnement;

architecture bhv of mode_fonctionnement is

signal tmp, tmp1 : std_logic_vector (7 downto 0);

begin
process(clk)

begin

if(rising_edge(clk) and clk='1') then
	if continu = '1' then
		if internal_reset = '1' then
			data_anemometre <= tmp;
			data_valid <= '1';
		else
			tmp <= data_in;
			data_valid <= '1';
		end if;
	else
		if start_stop = '1' then
			data_anemometre <= tmp;
			data_valid <= '1';
		else
			data_anemometre <= "00000000";
			data_valid <= '0';
			if internal_reset='0' then
				tmp1 <= data_in;
			else 
				tmp <= tmp1;
			end if;
			
		end if;
	end if;
		
end if;
end process;

end bhv;