library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity avalon is
port (
clk, chipselect, write_n, reset_n : in std_logic;
writedata : in std_logic_vector (31 downto 0);
readdata : out std_logic_vector (31 downto 0);
address: std_logic_vector (1 downto 0);
in_freq: in std_logic);
end entity;


ARCHITECTURE arch_avalon of avalon IS

signal clk_50 :  STD_LOGIC;
signal raz_n :  STD_LOGIC;
signal continu, start_stop :  STD_LOGIC;
signal hz :  STD_LOGIC;
signal data_valid : std_logic;
signal data_anemometre : std_logic_vector(7 downto 0);
signal config : std_logic_vector (31 downto 0);



COMPONENT counter2
	PORT(clk_50 : IN STD_LOGIC;
		 in_freq : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 frq : OUT  integer range 0 to 255
	);
END COMPONENT;

COMPONENT anemo
	PORT(HZ : IN STD_LOGIC;
		 clk_50 : IN STD_LOGIC;
		 continu : IN STD_LOGIC;
		 start_stop : IN STD_LOGIC;
		 raz_n : IN STD_LOGIC;
		 frq : IN  integer range 0 to 255;
		 data_valid : OUT STD_LOGIC;
		 data_anemometre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT diviseur2
	PORT(clk_50 : IN STD_LOGIC;
		 hz : OUT STD_LOGIC
	);
END COMPONENT;


SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :   integer range 0 to 255;


BEGIN 
hz <= SYNTHESIZED_WIRE_0;



b2v_inst : counter2
PORT MAP(clk_50 => clk_50,
		 in_freq => in_freq,
		 raz_n => raz_n,
		 frq => SYNTHESIZED_WIRE_1);


b2v_inst1 : anemo
PORT MAP(HZ => SYNTHESIZED_WIRE_0,
		 clk_50 => clk_50,
		 continu => continu,
		 start_stop => start_stop,
		 raz_n => raz_n,
		 frq => SYNTHESIZED_WIRE_1,
		 data_valid => data_valid,
		 data_anemometre => data_anemometre);


b2v_inst2 : diviseur2
PORT MAP(clk_50 => clk_50,
		 hz => SYNTHESIZED_WIRE_0);

--BEGIN
--
--divide: process (clk, reset_n)
--begin
--if control(0) = '0' then
--counter <= (others => '0');
--elsif clk'event and clk = '1' then
--if control(1) ='1' then
--if counter >= freq then
--counter <= (others => '0');
--else
--counter <= counter + 1;
--end if;
--end if;
--end if;
--end process divide;
--compare: process (clk, reset_n)
--begin
--if control(0) = '0' then
--pwm_on <= '1';
--elsif clk'event and clk = '1' then
--if counter >= duty then
--pwm_on <= '0';
--elsif counter = 0 then
--pwm_on <= '1';
--end if;
--end if;
--end process compare;
--out_pwm <= pwm_on and control(0);
--
--





-- écriture registres
process_write: process (clk, reset_n)
begin
	if reset_n = '0' then
		--freq <= (others => '0');
		continu <= '0';
		start_stop <= '0';
		raz_n <= '0';
		--control <= (others => '0');
	elsif clk'event and clk = '1' then
		if chipselect ='1' and write_n = '0' then
				config <= writedata;
				if address = "00" then
					start_stop <= config(2);
				end if;
				if address = "01" then
					continu <= config(1);
				end if;
				if address = "10" then
					raz_n <= config(0);
				end if;
		end if;
	end if;
end process;

--		if chipselect ='1' and write_n = '0' then
--			config <= writedata;
--			start_stop <= config(2);
--			continu <= config(1);
--			raz_n <= config(0);
--		end if;
--	end if;
--end process;

-- lecture registres
process_Read:
PROCESS(start_stop, continu, raz_n, data_valid, data_anemometre)
BEGIN
	case address is
		when "00" => readdata(2) <= start_stop ;
		when "01" => readdata(1) <= continu ;
		when "10" => readdata(0) <= raz_n ;
		when "11" => readdata <= X"00000"&"00"&data_valid&"0"&data_anemometre;
	end case;
	--readdata <= X"00000"&"00"&data_valid&"0"&data_anemometre;
END PROCESS process_Read ;
END arch_avalon ;