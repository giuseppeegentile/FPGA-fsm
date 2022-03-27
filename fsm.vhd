
entity project_reti_logiche is
    Port (
        i_clk : in STD_LOGIC;
	i_rst : in std_logic;
        i_start : in std_logic;
        i_data : in std_logic_vector(7 downto 0);
        o_address : out std_logic_vector(15 downto 0);
        o_done : out std_logic;
        o_en : out std_logic;
        o_we : out std_logic;
        o_data : out std_logic_vector (7 downto 0)
        );
        
end project_reti_logiche;

architecture Behavioral of project_reti_logiche is 
	component datapath is
	Port ( 	i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_data : in STD_LOGIC_VECTOR (7 downto 0);
           	o_data : out STD_LOGIC_VECTOR (7 downto 0); --o 15?
		rIN_load : in STD_LOGIC;
                sel : in STD_LOGIC_VECTOR;
     	        o_done : out STD_LOGIC);
end component;

entity serial2parallel is
	Port( 
		res: in std_logic;
		s_in: in std_logic;
		clk: in std_logic;
		p_out: out std_logic_vector(3 downto 0));
end serial2parallel;

architecture comport of serial2parallel is
	signal tmp: std_logic_vector( 7 downto 0);
	begin
		process( clk, res)
		begin
			if(res='1') then
				tmp<="00000000";
			elsif (clk'event and clk ='1') then
				tmp(7)<=s_in;
				tmp(6)<=temp(7);
				tmp(5)<=temp(6);
				tmp(4)<=temp(5);
				tmp(3)<=temp(4);
				tmp(2)<=temp(3);
				tmp(1)<=temp(2);
				tmp(0)<=temp(1);
			end if;
		end process;
	p_out<=temp;
end comport;

entity fsm is
    port(clock, reset, e: in bit;
        u: out bit_vector(1 downto 0));
end entity;

architecture arch of fsm is
type S is (S0,S1,S2,S3);
signal cur_state, next_state: S;
begin
    process(clock, reset)
    begin
        if(reset = '1') then
            cur_state <= A;
        elsif clock'event and clock='1' then
            cur_state <= next_state;
        end if;
    end process;

    process(cur_state, e)
    begin
        case cur_state is
            when S0 =>
                if(e = '0')
                then
                    next_state <= S0;
                    u <= '00';
                else
                    next_state <= S1;
                    u <= '11';
                end if;
            when S1 =>
                if(e = '0')
                then
                    next_state <= S3;
                    u <= '10';
                else
                    next_state <= S2;
                    u <= '01';
                end if;
            when S2 =>
                if(e = '0')
                then
                    next_state <= S3;
                    u <= '01';
                else
                    next_state <= S2;
                    u <= '10';
                end if;
            when S3 =>
                if(e = '0')
                then
                    next_state <= S0;
                    u <= '11';
                else
                    next_state <= S1;
                    u <= '00';
                end if;
        end case;
    end process;
end architecture;
            
                