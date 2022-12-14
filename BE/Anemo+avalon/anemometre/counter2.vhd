--chof dik stop fin kayna w chno khassk dir fiha je pense hiya li fiha probleme.


Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity counter2 is
	port(
		clk_50 : in std_logic;
		in_freq : in std_logic;
		raz_n : in std_logic;
		frq : out integer range 0 to 255);
end counter2;

architecture arch_counter of counter2 is

signal cnt1 : integer := 0; --count to 50M
signal cnt2 : integer range 0 to 255:= 0;

--signal start : std_logic := '0';
signal stop : std_logic :='0';
--signal stop2 : std_logic :='0';



begin 

clk : process(clk_50, raz_n) is
begin

if raz_n ='0' then
	cnt1 <= 0 ;
elsif rising_edge(clk_50) then
	
	--start <= not start;
	--stop <= '0';
	cnt1 <= cnt1 + 1;
	if cnt1 > 50000000 then
		stop <= '1';
		--wait for 10 ns;
		if cnt2 = 0 then
			stop <= '0';
			cnt1 <= 0;
		end if;
		--report "The value of 'cnt1' is " & integer'image(cnt1);	

	end if;
end if;
end process clk;

freq : process(clk_50, raz_n)
variable tmp : integer range 0 to 255;
begin
--report "The value of 'stop' is " & std_logic'image(stop);


if raz_n ='0' then
	cnt2 <= 0 ;
	--frq <= 0;
elsif rising_edge(in_freq) then
	report "The value of 'stop' is " & std_logic'image(stop);--zid stop
	if stop = '0' then
		cnt2 <= cnt2 + 1;
	--start <= not start;
	else 
	--	report "The value of 'cnt2' is " & integer'image(cnt2);	
		--tmp := 50000000*(cnt2/cnt1);
		--report "The value of 'tmp' is " & integer'image(tmp);--zid stop
		frq <= integer(cnt2);
		cnt2 <= 0;
		--cnt2 <= 0 ;
	end if;
end if;

end process freq;
end arch_counter;