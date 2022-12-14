library ieee;
use ieee.std_logic_1164.all;

entity block_tb is
end block_tb;

architecture behavior of block_tb is

	-- component 
	component Block1
	port(
		CLK_50M :  IN  STD_LOGIC;
		continu :  IN  STD_LOGIC;
		start_stop :  IN  STD_LOGIC;
		in_freq_anemometre :  IN  STD_LOGIC;
		raz_n :  IN  STD_LOGIC;
		data_valid :  OUT  STD_LOGIC;
		data_anemometre :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;
	
	--inputs
	signal CLK_50M : std_logic :='0';
	signal continu : std_logic :='1';
	signal start_stop : std_logic :='0';
	signal in_freq_anemometre: std_logic :='1';
	signal raz_n: std_logic :='1';
	
	--outputs
	signal data_valid : STD_LOGIC;
	signal data_anemometre : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	--clock period
	constant clk_period: time := 20 ns;
	-- freq period
	constant frq_period: time := 5 ms;
	
	BEGIN 
	
		-- instantiate the uni under test (UUT)
		uut : Block1 PORT MAP (
					CLK_50M => CLK_50M,
					continu => continu,
					start_stop => start_stop,
					in_freq_anemometre => in_freq_anemometre,
					raz_n => raz_n,
					data_valid => data_valid,
					data_anemometre => data_anemometre
					);
				
		-- clock process 
		clk_process : process 
		begin 
			CLK_50M <= '0';
			wait for clk_period/2;
			CLK_50M <= '1';
			wait for clk_period/2;
		end process;
		
		-- freq process
		frq_process : process
		begin
		 
			in_freq_anemometre <= '0';
			wait for frq_period/2;
			in_freq_anemometre <= '1';
			wait for frq_period/2;

		end process;
		
		-- stimulus process
		stim_proc : process
		begin
			wait for 100 ns;
			
			raz_n <= '0';
			wait;
		end process;
		
end behavior;
					
					