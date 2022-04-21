-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Thu Apr 21 19:01:01 2022
-- Host        : DESKTOP-P7L12CR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/Giuseppe/Documents/.terzo anno/progetto
--               RL/Progetto-Reti-Logiche-2022-Polimi/project_1/project_1.sim/sim_1/synth/func/project_tb_func_synth.vhd}
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal counter_bit_read : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter_bit_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_read[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_11_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_12_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_13_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_14_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_15_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_16_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_4_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_5_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_7_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_8_n_0\ : STD_LOGIC;
  signal \counter_bit_read[3]_i_9_n_0\ : STD_LOGIC;
  signal \counter_bit_read_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \counter_bit_read_reg[3]_i_10_n_1\ : STD_LOGIC;
  signal \counter_bit_read_reg[3]_i_10_n_2\ : STD_LOGIC;
  signal \counter_bit_read_reg[3]_i_10_n_3\ : STD_LOGIC;
  signal \counter_bit_read_reg[3]_i_6_n_2\ : STD_LOGIC;
  signal \counter_bit_read_reg[3]_i_6_n_3\ : STD_LOGIC;
  signal counter_bit_write : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \counter_bit_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_write[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter_bit_write[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_bit_write[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_bit_write[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter_bit_write[3]_i_4_n_0\ : STD_LOGIC;
  signal \counter_bit_write[3]_i_5_n_0\ : STD_LOGIC;
  signal counter_read : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_read[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_read[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_read[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_read[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_read[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter_read[15]_i_2_n_0\ : STD_LOGIC;
  signal \counter_read[15]_i_4_n_0\ : STD_LOGIC;
  signal \counter_read[15]_i_5_n_0\ : STD_LOGIC;
  signal \counter_read[15]_i_6_n_0\ : STD_LOGIC;
  signal \counter_read[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_read[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_read[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_read[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_read[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_read[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_read[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_read[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter_read_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_read_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_read_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_read_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_read_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \counter_read_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \counter_read_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_read_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_read_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_read_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_read_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_read_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_read_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_read_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal counter_write : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_write[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_write[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_write[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_write[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_write[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter_write[15]_i_2_n_0\ : STD_LOGIC;
  signal \counter_write[15]_i_4_n_0\ : STD_LOGIC;
  signal \counter_write[15]_i_5_n_0\ : STD_LOGIC;
  signal \counter_write[15]_i_6_n_0\ : STD_LOGIC;
  signal \counter_write[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_write[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_write[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_write[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_write[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_write[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_write[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_write[8]_i_5_n_0\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_write_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_write_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \counter_write_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \counter_write_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \counter_write_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \counter_write_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_write_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_write_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cur_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cur_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \cur_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \cur_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \cur_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \cur_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \cur_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \cur_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \cur_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \cur_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \cur_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \cur_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \cur_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \cur_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \cur_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \cur_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \cur_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \cur_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \cur_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \cur_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \cur_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \cur_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal num_bytes : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \num_bytes[0]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[1]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[2]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[3]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[4]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[5]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[6]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[7]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[8]_i_1_n_0\ : STD_LOGIC;
  signal \num_bytes[8]_i_2_n_0\ : STD_LOGIC;
  signal \num_bytes[8]_i_3_n_0\ : STD_LOGIC;
  signal \o_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[13]_i_3_n_0\ : STD_LOGIC;
  signal \o_address[13]_i_4_n_0\ : STD_LOGIC;
  signal \o_address[13]_i_5_n_0\ : STD_LOGIC;
  signal \o_address[13]_i_6_n_0\ : STD_LOGIC;
  signal \o_address[14]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[15]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[15]_i_4_n_0\ : STD_LOGIC;
  signal \o_address[15]_i_5_n_0\ : STD_LOGIC;
  signal \o_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[5]_i_3_n_0\ : STD_LOGIC;
  signal \o_address[5]_i_4_n_0\ : STD_LOGIC;
  signal \o_address[5]_i_5_n_0\ : STD_LOGIC;
  signal \o_address[5]_i_6_n_0\ : STD_LOGIC;
  signal \o_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[9]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[9]_i_3_n_0\ : STD_LOGIC;
  signal \o_address[9]_i_4_n_0\ : STD_LOGIC;
  signal \o_address[9]_i_5_n_0\ : STD_LOGIC;
  signal \o_address[9]_i_6_n_0\ : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_address_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_reg[13]_i_2_n_1\ : STD_LOGIC;
  signal \o_address_reg[13]_i_2_n_2\ : STD_LOGIC;
  signal \o_address_reg[13]_i_2_n_3\ : STD_LOGIC;
  signal \o_address_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \o_address_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \o_address_reg[5]_i_2_n_2\ : STD_LOGIC;
  signal \o_address_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \o_address_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \o_address_reg[9]_i_2_n_1\ : STD_LOGIC;
  signal \o_address_reg[9]_i_2_n_2\ : STD_LOGIC;
  signal \o_address_reg[9]_i_2_n_3\ : STD_LOGIC;
  signal o_address_regn_0_0 : STD_LOGIC;
  signal \o_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_2_n_0\ : STD_LOGIC;
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_done2_out : STD_LOGIC;
  signal o_done_OBUF : STD_LOGIC;
  signal o_en1_out : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_i_2_n_0 : STD_LOGIC;
  signal o_en_i_3_n_0 : STD_LOGIC;
  signal o_en_i_4_n_0 : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_we_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal temp_byte_to_read : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \temp_byte_to_read[0]_i_1_n_0\ : STD_LOGIC;
  signal temp_byte_to_write : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \temp_byte_to_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[0]_i_3_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[0]_i_5_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[0]_i_6_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[1]_i_3_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[1]_i_4_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[3]_i_2_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[6]_i_2_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_byte_to_write[7]_i_2_n_0\ : STD_LOGIC;
  signal temp_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \temp_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_counter_bit_read_reg[3]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_bit_read_reg[3]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_bit_read_reg[3]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_read_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_read_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_write_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_write_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_address_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_o_address_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_bit_read[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_bit_read[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_bit_read[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_bit_read[3]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_bit_read[3]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter_bit_read[3]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_bit_read[3]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter_bit_write[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_bit_write[2]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter_bit_write[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_bit_write[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_bit_write[3]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter_write[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cur_state[0]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cur_state[1]_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cur_state[1]_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cur_state[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cur_state[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cur_state[1]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cur_state[2]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cur_state[2]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cur_state[2]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cur_state[3]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cur_state[4]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \num_bytes[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \num_bytes[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \num_bytes[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \num_bytes[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \num_bytes[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \num_bytes[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \num_bytes[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \num_bytes[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \num_bytes[8]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \num_bytes[8]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \o_address[14]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_address[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_en_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of o_en_i_3 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of o_en_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of o_we_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_byte_to_write[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \temp_byte_to_write[0]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \temp_byte_to_write[0]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \temp_byte_to_write[0]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \temp_byte_to_write[1]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \temp_byte_to_write[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_byte_to_write[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \temp_byte_to_write[4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \temp_byte_to_write[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \temp_byte_to_write[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_byte_to_write[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \temp_state[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \temp_state[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \temp_state[2]_i_1\ : label is "soft_lutpair10";
begin
\counter_bit_read[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => counter_bit_read(0),
      O => \counter_bit_read[0]_i_1_n_0\
    );
\counter_bit_read[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F8F800"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => counter_bit_read(0),
      I4 => counter_bit_read(1),
      O => \counter_bit_read[1]_i_1_n_0\
    );
\counter_bit_read[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8F8F8F8000000"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => counter_bit_read(1),
      I4 => counter_bit_read(0),
      I5 => counter_bit_read(2),
      O => \counter_bit_read[2]_i_1_n_0\
    );
\counter_bit_read[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAEA"
    )
        port map (
      I0 => \counter_bit_read[3]_i_3_n_0\,
      I1 => \counter_bit_read[3]_i_4_n_0\,
      I2 => \counter_bit_read[3]_i_5_n_0\,
      I3 => \counter_bit_read_reg[3]_i_6_n_2\,
      I4 => \counter_bit_read[3]_i_7_n_0\,
      I5 => \counter_bit_read[3]_i_8_n_0\,
      O => \counter_bit_read[3]_i_1_n_0\
    );
\counter_bit_read[3]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_write(15),
      O => \counter_bit_read[3]_i_11_n_0\
    );
\counter_bit_read[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter_write(14),
      I1 => counter_write(13),
      I2 => counter_write(12),
      O => \counter_bit_read[3]_i_12_n_0\
    );
\counter_bit_read[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter_write(11),
      I1 => counter_write(10),
      I2 => counter_write(9),
      O => \counter_bit_read[3]_i_13_n_0\
    );
\counter_bit_read[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => num_bytes(6),
      I1 => counter_write(6),
      I2 => counter_write(8),
      I3 => num_bytes(8),
      I4 => counter_write(7),
      I5 => num_bytes(7),
      O => \counter_bit_read[3]_i_14_n_0\
    );
\counter_bit_read[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => num_bytes(3),
      I1 => counter_write(3),
      I2 => counter_write(5),
      I3 => num_bytes(5),
      I4 => counter_write(4),
      I5 => num_bytes(4),
      O => \counter_bit_read[3]_i_15_n_0\
    );
\counter_bit_read[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => num_bytes(0),
      I1 => counter_write(0),
      I2 => counter_write(2),
      I3 => num_bytes(2),
      I4 => counter_write(1),
      I5 => num_bytes(1),
      O => \counter_bit_read[3]_i_16_n_0\
    );
\counter_bit_read[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => counter_bit_read(1),
      I1 => counter_bit_read(0),
      I2 => counter_bit_read(2),
      I3 => \counter_bit_read[3]_i_9_n_0\,
      I4 => counter_bit_read(3),
      O => \counter_bit_read[3]_i_2_n_0\
    );
\counter_bit_read[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      I2 => cur_state(0),
      I3 => cur_state(2),
      I4 => cur_state(4),
      I5 => i_rst_IBUF,
      O => \counter_bit_read[3]_i_3_n_0\
    );
\counter_bit_read[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \counter_bit_read[3]_i_4_n_0\
    );
\counter_bit_read[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cur_state(4),
      I1 => i_rst_IBUF,
      O => \counter_bit_read[3]_i_5_n_0\
    );
\counter_bit_read[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => counter_bit_read(2),
      I1 => counter_bit_read(1),
      I2 => counter_bit_read(0),
      I3 => counter_bit_read(3),
      O => \counter_bit_read[3]_i_7_n_0\
    );
\counter_bit_read[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000500020000"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => i_rst_IBUF,
      I4 => cur_state(4),
      I5 => cur_state(0),
      O => \counter_bit_read[3]_i_8_n_0\
    );
\counter_bit_read[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => cur_state(3),
      O => \counter_bit_read[3]_i_9_n_0\
    );
\counter_bit_read_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_read[3]_i_1_n_0\,
      D => \counter_bit_read[0]_i_1_n_0\,
      Q => counter_bit_read(0),
      R => '0'
    );
\counter_bit_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_read[3]_i_1_n_0\,
      D => \counter_bit_read[1]_i_1_n_0\,
      Q => counter_bit_read(1),
      R => '0'
    );
\counter_bit_read_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_read[3]_i_1_n_0\,
      D => \counter_bit_read[2]_i_1_n_0\,
      Q => counter_bit_read(2),
      R => '0'
    );
\counter_bit_read_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_read[3]_i_1_n_0\,
      D => \counter_bit_read[3]_i_2_n_0\,
      Q => counter_bit_read(3),
      R => '0'
    );
\counter_bit_read_reg[3]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_bit_read_reg[3]_i_10_n_0\,
      CO(2) => \counter_bit_read_reg[3]_i_10_n_1\,
      CO(1) => \counter_bit_read_reg[3]_i_10_n_2\,
      CO(0) => \counter_bit_read_reg[3]_i_10_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_bit_read_reg[3]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_bit_read[3]_i_13_n_0\,
      S(2) => \counter_bit_read[3]_i_14_n_0\,
      S(1) => \counter_bit_read[3]_i_15_n_0\,
      S(0) => \counter_bit_read[3]_i_16_n_0\
    );
\counter_bit_read_reg[3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_bit_read_reg[3]_i_10_n_0\,
      CO(3 downto 2) => \NLW_counter_bit_read_reg[3]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_bit_read_reg[3]_i_6_n_2\,
      CO(0) => \counter_bit_read_reg[3]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_bit_read_reg[3]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \counter_bit_read[3]_i_11_n_0\,
      S(0) => \counter_bit_read[3]_i_12_n_0\
    );
\counter_bit_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005554"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => cur_state(1),
      I4 => counter_bit_write(0),
      O => \counter_bit_write[0]_i_1_n_0\
    );
\counter_bit_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FE0000"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(2),
      I2 => cur_state(3),
      I3 => cur_state(4),
      I4 => counter_bit_write(0),
      I5 => counter_bit_write(1),
      O => \counter_bit_write[1]_i_1_n_0\
    );
\counter_bit_write[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E0E0E0E000000"
    )
        port map (
      I0 => cur_state(1),
      I1 => \counter_bit_write[2]_i_2_n_0\,
      I2 => cur_state(4),
      I3 => counter_bit_write(1),
      I4 => counter_bit_write(0),
      I5 => counter_bit_write(2),
      O => \counter_bit_write[2]_i_1_n_0\
    );
\counter_bit_write[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      O => \counter_bit_write[2]_i_2_n_0\
    );
\counter_bit_write[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4800C800"
    )
        port map (
      I0 => cur_state(0),
      I1 => \num_bytes[8]_i_3_n_0\,
      I2 => cur_state(2),
      I3 => \counter_bit_write[3]_i_3_n_0\,
      I4 => cur_state(1),
      I5 => \counter_bit_write[3]_i_4_n_0\,
      O => \counter_bit_write[3]_i_1_n_0\
    );
\counter_bit_write[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \counter_bit_write[3]_i_5_n_0\,
      I1 => counter_bit_write(2),
      I2 => counter_bit_write(0),
      I3 => counter_bit_write(1),
      I4 => counter_bit_write(3),
      O => \counter_bit_write[3]_i_2_n_0\
    );
\counter_bit_write[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => counter_bit_write(0),
      I1 => counter_bit_write(1),
      I2 => counter_bit_write(2),
      I3 => counter_bit_write(3),
      O => \counter_bit_write[3]_i_3_n_0\
    );
\counter_bit_write[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010302040303000A"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      I2 => i_rst_IBUF,
      I3 => cur_state(1),
      I4 => cur_state(3),
      I5 => cur_state(2),
      O => \counter_bit_write[3]_i_4_n_0\
    );
\counter_bit_write[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(2),
      I2 => cur_state(3),
      I3 => cur_state(4),
      O => \counter_bit_write[3]_i_5_n_0\
    );
\counter_bit_write_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_write[3]_i_1_n_0\,
      D => \counter_bit_write[0]_i_1_n_0\,
      Q => counter_bit_write(0),
      R => '0'
    );
\counter_bit_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_write[3]_i_1_n_0\,
      D => \counter_bit_write[1]_i_1_n_0\,
      Q => counter_bit_write(1),
      R => '0'
    );
\counter_bit_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_write[3]_i_1_n_0\,
      D => \counter_bit_write[2]_i_1_n_0\,
      Q => counter_bit_write(2),
      R => '0'
    );
\counter_bit_write_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_bit_write[3]_i_1_n_0\,
      D => \counter_bit_write[3]_i_2_n_0\,
      Q => counter_bit_write(3),
      R => '0'
    );
\counter_read[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_read(0),
      O => \counter_read[0]_i_1_n_0\
    );
\counter_read[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(12),
      O => \counter_read[12]_i_2_n_0\
    );
\counter_read[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(11),
      O => \counter_read[12]_i_3_n_0\
    );
\counter_read[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(10),
      O => \counter_read[12]_i_4_n_0\
    );
\counter_read[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(9),
      O => \counter_read[12]_i_5_n_0\
    );
\counter_read[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(2),
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => cur_state(4),
      I5 => i_rst_IBUF,
      O => \counter_read[15]_i_1_n_0\
    );
\counter_read[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040110"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => cur_state(4),
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => cur_state(2),
      I5 => cur_state(3),
      O => \counter_read[15]_i_2_n_0\
    );
\counter_read[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(15),
      O => \counter_read[15]_i_4_n_0\
    );
\counter_read[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(14),
      O => \counter_read[15]_i_5_n_0\
    );
\counter_read[15]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(13),
      O => \counter_read[15]_i_6_n_0\
    );
\counter_read[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(4),
      O => \counter_read[4]_i_2_n_0\
    );
\counter_read[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(3),
      O => \counter_read[4]_i_3_n_0\
    );
\counter_read[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(2),
      O => \counter_read[4]_i_4_n_0\
    );
\counter_read[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(1),
      O => \counter_read[4]_i_5_n_0\
    );
\counter_read[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(8),
      O => \counter_read[8]_i_2_n_0\
    );
\counter_read[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(7),
      O => \counter_read[8]_i_3_n_0\
    );
\counter_read[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(6),
      O => \counter_read[8]_i_4_n_0\
    );
\counter_read[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_read(5),
      O => \counter_read[8]_i_5_n_0\
    );
\counter_read_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => \counter_read[0]_i_1_n_0\,
      Q => counter_read(0),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(10),
      Q => counter_read(10),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(11),
      Q => counter_read(11),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(12),
      Q => counter_read(12),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_read_reg[8]_i_1_n_0\,
      CO(3) => \counter_read_reg[12]_i_1_n_0\,
      CO(2) => \counter_read_reg[12]_i_1_n_1\,
      CO(1) => \counter_read_reg[12]_i_1_n_2\,
      CO(0) => \counter_read_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3) => \counter_read[12]_i_2_n_0\,
      S(2) => \counter_read[12]_i_3_n_0\,
      S(1) => \counter_read[12]_i_4_n_0\,
      S(0) => \counter_read[12]_i_5_n_0\
    );
\counter_read_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(13),
      Q => counter_read(13),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(14),
      Q => counter_read(14),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(15),
      Q => counter_read(15),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_read_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_read_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_read_reg[15]_i_3_n_2\,
      CO(0) => \counter_read_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_read_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2) => \counter_read[15]_i_4_n_0\,
      S(1) => \counter_read[15]_i_5_n_0\,
      S(0) => \counter_read[15]_i_6_n_0\
    );
\counter_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(1),
      Q => counter_read(1),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(2),
      Q => counter_read(2),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(3),
      Q => counter_read(3),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(4),
      Q => counter_read(4),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_read_reg[4]_i_1_n_0\,
      CO(2) => \counter_read_reg[4]_i_1_n_1\,
      CO(1) => \counter_read_reg[4]_i_1_n_2\,
      CO(0) => \counter_read_reg[4]_i_1_n_3\,
      CYINIT => counter_read(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \counter_read[4]_i_2_n_0\,
      S(2) => \counter_read[4]_i_3_n_0\,
      S(1) => \counter_read[4]_i_4_n_0\,
      S(0) => \counter_read[4]_i_5_n_0\
    );
\counter_read_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(5),
      Q => counter_read(5),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(6),
      Q => counter_read(6),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(7),
      Q => counter_read(7),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(8),
      Q => counter_read(8),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_read_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_read_reg[4]_i_1_n_0\,
      CO(3) => \counter_read_reg[8]_i_1_n_0\,
      CO(2) => \counter_read_reg[8]_i_1_n_1\,
      CO(1) => \counter_read_reg[8]_i_1_n_2\,
      CO(0) => \counter_read_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \counter_read[8]_i_2_n_0\,
      S(2) => \counter_read[8]_i_3_n_0\,
      S(1) => \counter_read[8]_i_4_n_0\,
      S(0) => \counter_read[8]_i_5_n_0\
    );
\counter_read_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_read[15]_i_2_n_0\,
      D => plusOp(9),
      Q => counter_read(9),
      R => \counter_read[15]_i_1_n_0\
    );
\counter_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEF00"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => \counter_write[15]_i_2_n_0\,
      I4 => counter_write(0),
      O => \counter_write[0]_i_1_n_0\
    );
\counter_write[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(12),
      O => \counter_write[12]_i_2_n_0\
    );
\counter_write[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(11),
      O => \counter_write[12]_i_3_n_0\
    );
\counter_write[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(10),
      O => \counter_write[12]_i_4_n_0\
    );
\counter_write[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(9),
      O => \counter_write[12]_i_5_n_0\
    );
\counter_write[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FD000000F00000"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => i_rst_IBUF,
      I4 => cur_state(4),
      I5 => cur_state(2),
      O => \counter_write[15]_i_1_n_0\
    );
\counter_write[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0C000C080C08"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(4),
      I2 => i_rst_IBUF,
      I3 => cur_state(3),
      I4 => cur_state(1),
      I5 => cur_state(0),
      O => \counter_write[15]_i_2_n_0\
    );
\counter_write[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(15),
      O => \counter_write[15]_i_4_n_0\
    );
\counter_write[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(14),
      O => \counter_write[15]_i_5_n_0\
    );
\counter_write[15]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(13),
      O => \counter_write[15]_i_6_n_0\
    );
\counter_write[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(4),
      O => \counter_write[4]_i_2_n_0\
    );
\counter_write[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(3),
      O => \counter_write[4]_i_3_n_0\
    );
\counter_write[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(2),
      O => \counter_write[4]_i_4_n_0\
    );
\counter_write[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(1),
      O => \counter_write[4]_i_5_n_0\
    );
\counter_write[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(8),
      O => \counter_write[8]_i_2_n_0\
    );
\counter_write[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(7),
      O => \counter_write[8]_i_3_n_0\
    );
\counter_write[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(6),
      O => \counter_write[8]_i_4_n_0\
    );
\counter_write[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(5),
      O => \counter_write[8]_i_5_n_0\
    );
\counter_write_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \counter_write[0]_i_1_n_0\,
      Q => counter_write(0),
      R => '0'
    );
\counter_write_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[12]_i_1_n_6\,
      Q => counter_write(10),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[12]_i_1_n_5\,
      Q => counter_write(11),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[12]_i_1_n_4\,
      Q => counter_write(12),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_write_reg[8]_i_1_n_0\,
      CO(3) => \counter_write_reg[12]_i_1_n_0\,
      CO(2) => \counter_write_reg[12]_i_1_n_1\,
      CO(1) => \counter_write_reg[12]_i_1_n_2\,
      CO(0) => \counter_write_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_write_reg[12]_i_1_n_4\,
      O(2) => \counter_write_reg[12]_i_1_n_5\,
      O(1) => \counter_write_reg[12]_i_1_n_6\,
      O(0) => \counter_write_reg[12]_i_1_n_7\,
      S(3) => \counter_write[12]_i_2_n_0\,
      S(2) => \counter_write[12]_i_3_n_0\,
      S(1) => \counter_write[12]_i_4_n_0\,
      S(0) => \counter_write[12]_i_5_n_0\
    );
\counter_write_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[15]_i_3_n_7\,
      Q => counter_write(13),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[15]_i_3_n_6\,
      Q => counter_write(14),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[15]_i_3_n_5\,
      Q => counter_write(15),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_write_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_write_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_write_reg[15]_i_3_n_2\,
      CO(0) => \counter_write_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_write_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2) => \counter_write_reg[15]_i_3_n_5\,
      O(1) => \counter_write_reg[15]_i_3_n_6\,
      O(0) => \counter_write_reg[15]_i_3_n_7\,
      S(3) => '0',
      S(2) => \counter_write[15]_i_4_n_0\,
      S(1) => \counter_write[15]_i_5_n_0\,
      S(0) => \counter_write[15]_i_6_n_0\
    );
\counter_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[4]_i_1_n_7\,
      Q => counter_write(1),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[4]_i_1_n_6\,
      Q => counter_write(2),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[4]_i_1_n_5\,
      Q => counter_write(3),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[4]_i_1_n_4\,
      Q => counter_write(4),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_write_reg[4]_i_1_n_0\,
      CO(2) => \counter_write_reg[4]_i_1_n_1\,
      CO(1) => \counter_write_reg[4]_i_1_n_2\,
      CO(0) => \counter_write_reg[4]_i_1_n_3\,
      CYINIT => counter_write(0),
      DI(3 downto 0) => B"0000",
      O(3) => \counter_write_reg[4]_i_1_n_4\,
      O(2) => \counter_write_reg[4]_i_1_n_5\,
      O(1) => \counter_write_reg[4]_i_1_n_6\,
      O(0) => \counter_write_reg[4]_i_1_n_7\,
      S(3) => \counter_write[4]_i_2_n_0\,
      S(2) => \counter_write[4]_i_3_n_0\,
      S(1) => \counter_write[4]_i_4_n_0\,
      S(0) => \counter_write[4]_i_5_n_0\
    );
\counter_write_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[8]_i_1_n_7\,
      Q => counter_write(5),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[8]_i_1_n_6\,
      Q => counter_write(6),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[8]_i_1_n_5\,
      Q => counter_write(7),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[8]_i_1_n_4\,
      Q => counter_write(8),
      R => \counter_write[15]_i_1_n_0\
    );
\counter_write_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_write_reg[4]_i_1_n_0\,
      CO(3) => \counter_write_reg[8]_i_1_n_0\,
      CO(2) => \counter_write_reg[8]_i_1_n_1\,
      CO(1) => \counter_write_reg[8]_i_1_n_2\,
      CO(0) => \counter_write_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_write_reg[8]_i_1_n_4\,
      O(2) => \counter_write_reg[8]_i_1_n_5\,
      O(1) => \counter_write_reg[8]_i_1_n_6\,
      O(0) => \counter_write_reg[8]_i_1_n_7\,
      S(3) => \counter_write[8]_i_2_n_0\,
      S(2) => \counter_write[8]_i_3_n_0\,
      S(1) => \counter_write[8]_i_4_n_0\,
      S(0) => \counter_write[8]_i_5_n_0\
    );
\counter_write_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \counter_write[15]_i_2_n_0\,
      D => \counter_write_reg[12]_i_1_n_7\,
      Q => counter_write(9),
      R => \counter_write[15]_i_1_n_0\
    );
\cur_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFFFE"
    )
        port map (
      I0 => \cur_state[0]_i_2_n_0\,
      I1 => \cur_state[0]_i_3_n_0\,
      I2 => \cur_state[0]_i_4_n_0\,
      I3 => \cur_state[0]_i_5_n_0\,
      I4 => \cur_state[4]_i_5_n_0\,
      O => \cur_state[0]_i_1_n_0\
    );
\cur_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAEF"
    )
        port map (
      I0 => \cur_state[0]_i_6_n_0\,
      I1 => \cur_state_reg[3]_i_3_n_0\,
      I2 => \counter_bit_write[3]_i_3_n_0\,
      I3 => cur_state(3),
      I4 => cur_state(1),
      I5 => cur_state(4),
      O => \cur_state[0]_i_2_n_0\
    );
\cur_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606020255025502"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => \counter_bit_read_reg[3]_i_6_n_2\,
      I5 => cur_state(4),
      O => \cur_state[0]_i_3_n_0\
    );
\cur_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000450000CF00"
    )
        port map (
      I0 => cur_state(3),
      I1 => \cur_state_reg[3]_i_3_n_0\,
      I2 => \counter_bit_write[3]_i_3_n_0\,
      I3 => cur_state(2),
      I4 => cur_state(4),
      I5 => cur_state(0),
      O => \cur_state[0]_i_4_n_0\
    );
\cur_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \cur_state[0]_i_5_n_0\
    );
\cur_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000080CF"
    )
        port map (
      I0 => \counter_bit_read[3]_i_7_n_0\,
      I1 => temp_state(0),
      I2 => cur_state(1),
      I3 => cur_state(4),
      I4 => cur_state(0),
      I5 => cur_state(2),
      O => \cur_state[0]_i_6_n_0\
    );
\cur_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF1"
    )
        port map (
      I0 => \cur_state[1]_i_2_n_0\,
      I1 => \cur_state[1]_i_3_n_0\,
      I2 => \cur_state[1]_i_4_n_0\,
      I3 => \cur_state[1]_i_5_n_0\,
      I4 => \cur_state[1]_i_6_n_0\,
      I5 => \cur_state[1]_i_7_n_0\,
      O => \cur_state[1]_i_1_n_0\
    );
\cur_state[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(3),
      O => \cur_state[1]_i_10_n_0\
    );
\cur_state[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      O => \cur_state[1]_i_11_n_0\
    );
\cur_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      O => \cur_state[1]_i_2_n_0\
    );
\cur_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      O => \cur_state[1]_i_3_n_0\
    );
\cur_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000BFFFF000B000B"
    )
        port map (
      I0 => \cur_state[4]_i_5_n_0\,
      I1 => cur_state(3),
      I2 => \cur_state[2]_i_3_n_0\,
      I3 => cur_state(4),
      I4 => \cur_state_reg[3]_i_3_n_0\,
      I5 => \cur_state[1]_i_8_n_0\,
      O => \cur_state[1]_i_4_n_0\
    );
\cur_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => \cur_state[1]_i_9_n_0\,
      I1 => \cur_state_reg[3]_i_3_n_0\,
      I2 => \cur_state[1]_i_10_n_0\,
      I3 => cur_state(0),
      I4 => cur_state(4),
      I5 => \counter_bit_write[3]_i_3_n_0\,
      O => \cur_state[1]_i_5_n_0\
    );
\cur_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BA000000AA0000"
    )
        port map (
      I0 => \cur_state[1]_i_11_n_0\,
      I1 => \counter_bit_read_reg[3]_i_6_n_2\,
      I2 => \counter_bit_read[3]_i_7_n_0\,
      I3 => cur_state(2),
      I4 => cur_state(4),
      I5 => temp_state(1),
      O => \cur_state[1]_i_6_n_0\
    );
\cur_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009000000000000"
    )
        port map (
      I0 => \cur_state_reg[3]_i_3_n_0\,
      I1 => cur_state(1),
      I2 => cur_state(0),
      I3 => cur_state(4),
      I4 => cur_state(2),
      I5 => \counter_bit_write[3]_i_3_n_0\,
      O => \cur_state[1]_i_7_n_0\
    );
\cur_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(0),
      I3 => \counter_bit_write[3]_i_3_n_0\,
      O => \cur_state[1]_i_8_n_0\
    );
\cur_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400FF0000"
    )
        port map (
      I0 => cur_state(3),
      I1 => temp_state(1),
      I2 => cur_state(4),
      I3 => cur_state(2),
      I4 => cur_state(0),
      I5 => cur_state(1),
      O => \cur_state[1]_i_9_n_0\
    );
\cur_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFAB"
    )
        port map (
      I0 => \cur_state[2]_i_2_n_0\,
      I1 => \cur_state[4]_i_5_n_0\,
      I2 => \cur_state[2]_i_3_n_0\,
      I3 => \cur_state[2]_i_4_n_0\,
      I4 => \cur_state[2]_i_5_n_0\,
      I5 => \cur_state[2]_i_6_n_0\,
      O => \cur_state[2]_i_1_n_0\
    );
\cur_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505000000C000000"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      I2 => cur_state(2),
      I3 => \counter_bit_read_reg[3]_i_6_n_2\,
      I4 => cur_state(1),
      I5 => cur_state(0),
      O => \cur_state[2]_i_2_n_0\
    );
\cur_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(0),
      I2 => cur_state(2),
      O => \cur_state[2]_i_3_n_0\
    );
\cur_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888F88"
    )
        port map (
      I0 => \cur_state[2]_i_7_n_0\,
      I1 => \counter_bit_read[3]_i_7_n_0\,
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => \cur_state[1]_i_2_n_0\,
      I5 => \cur_state[2]_i_8_n_0\,
      O => \cur_state[2]_i_4_n_0\
    );
\cur_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000F0010000000"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(3),
      I2 => \cur_state_reg[3]_i_3_n_0\,
      I3 => \cur_state[3]_i_4_n_0\,
      I4 => cur_state(1),
      I5 => cur_state(0),
      O => \cur_state[2]_i_5_n_0\
    );
\cur_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \cur_state[2]_i_6_n_0\
    );
\cur_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => cur_state(2),
      I1 => temp_state(2),
      I2 => cur_state(1),
      I3 => cur_state(0),
      O => \cur_state[2]_i_7_n_0\
    );
\cur_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000CF00A0"
    )
        port map (
      I0 => temp_state(2),
      I1 => \counter_bit_write[3]_i_3_n_0\,
      I2 => cur_state(1),
      I3 => cur_state(4),
      I4 => cur_state(0),
      I5 => cur_state(2),
      O => \cur_state[2]_i_8_n_0\
    );
\cur_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \cur_state[3]_i_2_n_0\,
      I1 => \cur_state_reg[3]_i_3_n_0\,
      I2 => cur_state(3),
      I3 => cur_state(0),
      I4 => cur_state(4),
      I5 => \cur_state[3]_i_4_n_0\,
      O => \cur_state[3]_i_1_n_0\
    );
\cur_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C008A"
    )
        port map (
      I0 => cur_state(0),
      I1 => \counter_bit_write[3]_i_3_n_0\,
      I2 => cur_state(1),
      I3 => cur_state(3),
      I4 => cur_state(2),
      I5 => cur_state(4),
      O => \cur_state[3]_i_2_n_0\
    );
\cur_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => counter_bit_write(3),
      I1 => counter_bit_write(2),
      I2 => counter_bit_write(1),
      I3 => counter_bit_write(0),
      I4 => cur_state(2),
      O => \cur_state[3]_i_4_n_0\
    );
\cur_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => temp_byte_to_read(4),
      I1 => temp_byte_to_read(6),
      I2 => counter_bit_read(1),
      I3 => counter_bit_read(2),
      I4 => temp_byte_to_read(0),
      I5 => temp_byte_to_read(2),
      O => \cur_state[3]_i_5_n_0\
    );
\cur_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350F35F035FF"
    )
        port map (
      I0 => temp_byte_to_read(5),
      I1 => temp_byte_to_read(7),
      I2 => counter_bit_read(1),
      I3 => counter_bit_read(2),
      I4 => temp_byte_to_read(1),
      I5 => temp_byte_to_read(3),
      O => \cur_state[3]_i_6_n_0\
    );
\cur_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333FF33FF33FE"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => cur_state(4),
      I2 => cur_state(0),
      I3 => cur_state(3),
      I4 => cur_state(1),
      I5 => cur_state(2),
      O => \cur_state[4]_i_1_n_0\
    );
\cur_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAABAAA"
    )
        port map (
      I0 => \cur_state[4]_i_3_n_0\,
      I1 => \cur_state[4]_i_4_n_0\,
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => \cur_state[4]_i_5_n_0\,
      I5 => \cur_state[4]_i_6_n_0\,
      O => \cur_state[4]_i_2_n_0\
    );
\cur_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F000001222"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => \counter_bit_write[3]_i_3_n_0\,
      I5 => cur_state(4),
      O => \cur_state[4]_i_3_n_0\
    );
\cur_state[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      O => \cur_state[4]_i_4_n_0\
    );
\cur_state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cur_state[4]_i_7_n_0\,
      I1 => num_bytes(8),
      I2 => num_bytes(2),
      I3 => num_bytes(1),
      I4 => num_bytes(5),
      O => \cur_state[4]_i_5_n_0\
    );
\cur_state[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080008"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(4),
      I2 => cur_state(2),
      I3 => \counter_bit_read[3]_i_7_n_0\,
      I4 => \counter_bit_read_reg[3]_i_6_n_2\,
      O => \cur_state[4]_i_6_n_0\
    );
\cur_state[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => num_bytes(3),
      I1 => num_bytes(6),
      I2 => num_bytes(7),
      I3 => num_bytes(0),
      I4 => num_bytes(4),
      O => \cur_state[4]_i_7_n_0\
    );
\cur_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \cur_state[4]_i_1_n_0\,
      D => \cur_state[0]_i_1_n_0\,
      Q => cur_state(0),
      R => i_rst_IBUF
    );
\cur_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \cur_state[4]_i_1_n_0\,
      D => \cur_state[1]_i_1_n_0\,
      Q => cur_state(1),
      R => i_rst_IBUF
    );
\cur_state_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \cur_state[4]_i_1_n_0\,
      D => \cur_state[2]_i_1_n_0\,
      Q => cur_state(2),
      S => i_rst_IBUF
    );
\cur_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \cur_state[4]_i_1_n_0\,
      D => \cur_state[3]_i_1_n_0\,
      Q => cur_state(3),
      R => i_rst_IBUF
    );
\cur_state_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cur_state[3]_i_5_n_0\,
      I1 => \cur_state[3]_i_6_n_0\,
      O => \cur_state_reg[3]_i_3_n_0\,
      S => counter_bit_read(0)
    );
\cur_state_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \cur_state[4]_i_1_n_0\,
      D => \cur_state[4]_i_2_n_0\,
      Q => cur_state(4),
      S => i_rst_IBUF
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\num_bytes[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => cur_state(3),
      O => \num_bytes[0]_i_1_n_0\
    );
\num_bytes[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => num_bytes(0),
      I1 => cur_state(3),
      I2 => i_data_IBUF(1),
      O => \num_bytes[1]_i_1_n_0\
    );
\num_bytes[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => num_bytes(1),
      I1 => cur_state(3),
      I2 => i_data_IBUF(2),
      O => \num_bytes[2]_i_1_n_0\
    );
\num_bytes[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => num_bytes(2),
      I1 => cur_state(3),
      I2 => i_data_IBUF(3),
      O => \num_bytes[3]_i_1_n_0\
    );
\num_bytes[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => num_bytes(3),
      I1 => cur_state(3),
      I2 => i_data_IBUF(4),
      O => \num_bytes[4]_i_1_n_0\
    );
\num_bytes[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => num_bytes(4),
      I1 => cur_state(3),
      I2 => i_data_IBUF(5),
      O => \num_bytes[5]_i_1_n_0\
    );
\num_bytes[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => num_bytes(5),
      I1 => cur_state(3),
      I2 => i_data_IBUF(6),
      O => \num_bytes[6]_i_1_n_0\
    );
\num_bytes[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => num_bytes(6),
      I1 => cur_state(3),
      I2 => i_data_IBUF(7),
      O => \num_bytes[7]_i_1_n_0\
    );
\num_bytes[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000C00"
    )
        port map (
      I0 => \cur_state[4]_i_5_n_0\,
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => \num_bytes[8]_i_3_n_0\,
      I4 => cur_state(3),
      I5 => cur_state(2),
      O => \num_bytes[8]_i_1_n_0\
    );
\num_bytes[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_state(3),
      I1 => num_bytes(7),
      O => \num_bytes[8]_i_2_n_0\
    );
\num_bytes[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => cur_state(4),
      O => \num_bytes[8]_i_3_n_0\
    );
\num_bytes_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[0]_i_1_n_0\,
      Q => num_bytes(0),
      R => '0'
    );
\num_bytes_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[1]_i_1_n_0\,
      Q => num_bytes(1),
      R => '0'
    );
\num_bytes_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[2]_i_1_n_0\,
      Q => num_bytes(2),
      R => '0'
    );
\num_bytes_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[3]_i_1_n_0\,
      Q => num_bytes(3),
      R => '0'
    );
\num_bytes_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[4]_i_1_n_0\,
      Q => num_bytes(4),
      R => '0'
    );
\num_bytes_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[5]_i_1_n_0\,
      Q => num_bytes(5),
      R => '0'
    );
\num_bytes_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[6]_i_1_n_0\,
      Q => num_bytes(6),
      R => '0'
    );
\num_bytes_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[7]_i_1_n_0\,
      Q => num_bytes(7),
      R => '0'
    );
\num_bytes_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \num_bytes[8]_i_1_n_0\,
      D => \num_bytes[8]_i_2_n_0\,
      Q => num_bytes(8),
      R => '0'
    );
\o_address[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555FD5D"
    )
        port map (
      I0 => cur_state(4),
      I1 => counter_read(0),
      I2 => cur_state(0),
      I3 => counter_write(0),
      I4 => cur_state(2),
      O => \o_address[0]_i_1_n_0\
    );
\o_address[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(10),
      I1 => data1(10),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[10]_i_1_n_0\
    );
\o_address[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(11),
      I1 => data1(11),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[11]_i_1_n_0\
    );
\o_address[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(12),
      I1 => data1(12),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[12]_i_1_n_0\
    );
\o_address[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(13),
      I1 => data1(13),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[13]_i_1_n_0\
    );
\o_address[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(13),
      O => \o_address[13]_i_3_n_0\
    );
\o_address[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(12),
      O => \o_address[13]_i_4_n_0\
    );
\o_address[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(11),
      O => \o_address[13]_i_5_n_0\
    );
\o_address[13]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(10),
      O => \o_address[13]_i_6_n_0\
    );
\o_address[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(14),
      I1 => data1(14),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[14]_i_1_n_0\
    );
\o_address[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020032"
    )
        port map (
      I0 => cur_state(4),
      I1 => i_rst_IBUF,
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => cur_state(2),
      I5 => cur_state(3),
      O => \o_address[15]_i_1_n_0\
    );
\o_address[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(15),
      I1 => data1(15),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[15]_i_2_n_0\
    );
\o_address[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(15),
      O => \o_address[15]_i_4_n_0\
    );
\o_address[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(14),
      O => \o_address[15]_i_5_n_0\
    );
\o_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(1),
      I1 => counter_write(1),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[1]_i_1_n_0\
    );
\o_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(2),
      I1 => data1(2),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[2]_i_1_n_0\
    );
\o_address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(3),
      I1 => data1(3),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[3]_i_1_n_0\
    );
\o_address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(4),
      I1 => data1(4),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[4]_i_1_n_0\
    );
\o_address[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(5),
      I1 => data1(5),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[5]_i_1_n_0\
    );
\o_address[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_write(5),
      O => \o_address[5]_i_3_n_0\
    );
\o_address[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(4),
      O => \o_address[5]_i_4_n_0\
    );
\o_address[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_write(3),
      O => \o_address[5]_i_5_n_0\
    );
\o_address[5]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_write(2),
      O => \o_address[5]_i_6_n_0\
    );
\o_address[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(6),
      I1 => data1(6),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[6]_i_1_n_0\
    );
\o_address[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(7),
      I1 => data1(7),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[7]_i_1_n_0\
    );
\o_address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(8),
      I1 => data1(8),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[8]_i_1_n_0\
    );
\o_address[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000A00"
    )
        port map (
      I0 => counter_read(9),
      I1 => data1(9),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(0),
      O => \o_address[9]_i_1_n_0\
    );
\o_address[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_write(9),
      O => \o_address[9]_i_3_n_0\
    );
\o_address[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_write(8),
      O => \o_address[9]_i_4_n_0\
    );
\o_address[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_write(7),
      O => \o_address[9]_i_5_n_0\
    );
\o_address[9]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_write(6),
      O => \o_address[9]_i_6_n_0\
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(11),
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(12),
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(13),
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(14),
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(15),
      O => o_address(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[0]_i_1_n_0\,
      Q => o_address_OBUF(0),
      R => '0'
    );
\o_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[10]_i_1_n_0\,
      Q => o_address_OBUF(10),
      R => '0'
    );
\o_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[11]_i_1_n_0\,
      Q => o_address_OBUF(11),
      R => '0'
    );
\o_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[12]_i_1_n_0\,
      Q => o_address_OBUF(12),
      R => '0'
    );
\o_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[13]_i_1_n_0\,
      Q => o_address_OBUF(13),
      R => '0'
    );
\o_address_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_reg[9]_i_2_n_0\,
      CO(3) => \o_address_reg[13]_i_2_n_0\,
      CO(2) => \o_address_reg[13]_i_2_n_1\,
      CO(1) => \o_address_reg[13]_i_2_n_2\,
      CO(0) => \o_address_reg[13]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data1(13 downto 10),
      S(3) => \o_address[13]_i_3_n_0\,
      S(2) => \o_address[13]_i_4_n_0\,
      S(1) => \o_address[13]_i_5_n_0\,
      S(0) => \o_address[13]_i_6_n_0\
    );
\o_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[14]_i_1_n_0\,
      Q => o_address_OBUF(14),
      R => '0'
    );
\o_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[15]_i_2_n_0\,
      Q => o_address_OBUF(15),
      R => '0'
    );
\o_address_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_reg[13]_i_2_n_0\,
      CO(3 downto 1) => \NLW_o_address_reg[15]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \o_address_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_o_address_reg[15]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data1(15 downto 14),
      S(3 downto 2) => B"00",
      S(1) => \o_address[15]_i_4_n_0\,
      S(0) => \o_address[15]_i_5_n_0\
    );
\o_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[1]_i_1_n_0\,
      Q => o_address_OBUF(1),
      R => '0'
    );
\o_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[2]_i_1_n_0\,
      Q => o_address_OBUF(2),
      R => '0'
    );
\o_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[3]_i_1_n_0\,
      Q => o_address_OBUF(3),
      R => '0'
    );
\o_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[4]_i_1_n_0\,
      Q => o_address_OBUF(4),
      R => '0'
    );
\o_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[5]_i_1_n_0\,
      Q => o_address_OBUF(5),
      R => '0'
    );
\o_address_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_address_reg[5]_i_2_n_0\,
      CO(2) => \o_address_reg[5]_i_2_n_1\,
      CO(1) => \o_address_reg[5]_i_2_n_2\,
      CO(0) => \o_address_reg[5]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => counter_write(5),
      DI(2) => '0',
      DI(1) => counter_write(3),
      DI(0) => '0',
      O(3 downto 0) => data1(5 downto 2),
      S(3) => \o_address[5]_i_3_n_0\,
      S(2) => \o_address[5]_i_4_n_0\,
      S(1) => \o_address[5]_i_5_n_0\,
      S(0) => \o_address[5]_i_6_n_0\
    );
\o_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[6]_i_1_n_0\,
      Q => o_address_OBUF(6),
      R => '0'
    );
\o_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[7]_i_1_n_0\,
      Q => o_address_OBUF(7),
      R => '0'
    );
\o_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[8]_i_1_n_0\,
      Q => o_address_OBUF(8),
      R => '0'
    );
\o_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => \o_address[9]_i_1_n_0\,
      Q => o_address_OBUF(9),
      R => '0'
    );
\o_address_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_reg[5]_i_2_n_0\,
      CO(3) => \o_address_reg[9]_i_2_n_0\,
      CO(2) => \o_address_reg[9]_i_2_n_1\,
      CO(1) => \o_address_reg[9]_i_2_n_2\,
      CO(0) => \o_address_reg[9]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_write(9 downto 6),
      O(3 downto 0) => data1(9 downto 6),
      S(3) => \o_address[9]_i_3_n_0\,
      S(2) => \o_address[9]_i_4_n_0\,
      S(1) => \o_address[9]_i_5_n_0\,
      S(0) => \o_address[9]_i_6_n_0\
    );
o_address_regi_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_clk_IBUF_BUFG,
      O => o_address_regn_0_0
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => i_rst_IBUF,
      I5 => cur_state(4),
      O => \o_data[7]_i_1_n_0\
    );
\o_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200002000"
    )
        port map (
      I0 => cur_state(4),
      I1 => i_rst_IBUF,
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => cur_state(3),
      I5 => cur_state(2),
      O => \o_data[7]_i_2_n_0\
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
\o_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(7),
      Q => o_data_OBUF(0),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(6),
      Q => o_data_OBUF(1),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(5),
      Q => o_data_OBUF(2),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(4),
      Q => o_data_OBUF(3),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(3),
      Q => o_data_OBUF(4),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(2),
      Q => o_data_OBUF(5),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(1),
      Q => o_data_OBUF(6),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_data[7]_i_2_n_0\,
      D => temp_byte_to_write(0),
      Q => o_data_OBUF(7),
      R => \o_data[7]_i_1_n_0\
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => i_rst_IBUF,
      I4 => cur_state(4),
      O => o_done2_out
    );
o_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => o_done2_out,
      D => cur_state(0),
      Q => o_done_OBUF,
      R => '0'
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000000FE00CE"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => cur_state(0),
      I2 => cur_state(4),
      I3 => i_rst_IBUF,
      I4 => o_en_i_3_n_0,
      I5 => o_en_i_4_n_0,
      O => o_en1_out
    );
o_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => cur_state(4),
      I1 => i_start_IBUF,
      I2 => cur_state(0),
      O => o_en_i_2_n_0
    );
o_en_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(1),
      O => o_en_i_3_n_0
    );
o_en_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => o_en_i_4_n_0
    );
o_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => o_en1_out,
      D => o_en_i_2_n_0,
      Q => o_en_OBUF,
      R => '0'
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
o_we_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(0),
      O => o_we_i_1_n_0
    );
o_we_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \o_address[15]_i_1_n_0\,
      D => o_we_i_1_n_0,
      Q => o_we_OBUF,
      R => '0'
    );
\temp_byte_to_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => cur_state(4),
      I5 => i_rst_IBUF,
      O => \temp_byte_to_read[0]_i_1_n_0\
    );
\temp_byte_to_read_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(7),
      Q => temp_byte_to_read(0),
      R => '0'
    );
\temp_byte_to_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(6),
      Q => temp_byte_to_read(1),
      R => '0'
    );
\temp_byte_to_read_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(5),
      Q => temp_byte_to_read(2),
      R => '0'
    );
\temp_byte_to_read_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(4),
      Q => temp_byte_to_read(3),
      R => '0'
    );
\temp_byte_to_read_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(3),
      Q => temp_byte_to_read(4),
      R => '0'
    );
\temp_byte_to_read_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(2),
      Q => temp_byte_to_read(5),
      R => '0'
    );
\temp_byte_to_read_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(1),
      Q => temp_byte_to_read(6),
      R => '0'
    );
\temp_byte_to_read_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => \temp_byte_to_read[0]_i_1_n_0\,
      D => i_data_IBUF(0),
      Q => temp_byte_to_read(7),
      R => '0'
    );
\temp_byte_to_write[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[0]_i_3_n_0\,
      I2 => temp_byte_to_write(0),
      O => \temp_byte_to_write[0]_i_1_n_0\
    );
\temp_byte_to_write[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3001301223332312"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      I2 => cur_state(1),
      I3 => cur_state(3),
      I4 => \cur_state_reg[3]_i_3_n_0\,
      I5 => cur_state(2),
      O => \temp_byte_to_write[0]_i_2_n_0\
    );
\temp_byte_to_write[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA000000AAF2"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_4_n_0\,
      I1 => counter_bit_write(3),
      I2 => \temp_byte_to_write[0]_i_5_n_0\,
      I3 => cur_state(4),
      I4 => i_rst_IBUF,
      I5 => \temp_byte_to_write[0]_i_6_n_0\,
      O => \temp_byte_to_write[0]_i_3_n_0\
    );
\temp_byte_to_write[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \temp_byte_to_write[0]_i_4_n_0\
    );
\temp_byte_to_write[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3DDDCCCC"
    )
        port map (
      I0 => counter_bit_write(3),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => cur_state(2),
      O => \temp_byte_to_write[0]_i_5_n_0\
    );
\temp_byte_to_write[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter_bit_write(2),
      I1 => counter_bit_write(1),
      I2 => counter_bit_write(0),
      O => \temp_byte_to_write[0]_i_6_n_0\
    );
\temp_byte_to_write[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[1]_i_2_n_0\,
      I2 => counter_bit_write(0),
      I3 => \temp_byte_to_write[1]_i_3_n_0\,
      I4 => \temp_byte_to_write[1]_i_4_n_0\,
      I5 => temp_byte_to_write(1),
      O => \temp_byte_to_write[1]_i_1_n_0\
    );
\temp_byte_to_write[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007000F000F0008"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => cur_state(4),
      I3 => i_rst_IBUF,
      I4 => cur_state(3),
      I5 => cur_state(2),
      O => \temp_byte_to_write[1]_i_2_n_0\
    );
\temp_byte_to_write[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter_bit_write(1),
      I1 => counter_bit_write(2),
      O => \temp_byte_to_write[1]_i_3_n_0\
    );
\temp_byte_to_write[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => i_rst_IBUF,
      I5 => cur_state(4),
      O => \temp_byte_to_write[1]_i_4_n_0\
    );
\temp_byte_to_write[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[2]_i_2_n_0\,
      I2 => temp_byte_to_write(2),
      O => \temp_byte_to_write[2]_i_1_n_0\
    );
\temp_byte_to_write[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \temp_byte_to_write[1]_i_2_n_0\,
      I1 => counter_bit_write(2),
      I2 => counter_bit_write(1),
      I3 => counter_bit_write(0),
      I4 => \temp_byte_to_write[1]_i_4_n_0\,
      O => \temp_byte_to_write[2]_i_2_n_0\
    );
\temp_byte_to_write[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[1]_i_2_n_0\,
      I2 => \temp_byte_to_write[3]_i_2_n_0\,
      I3 => counter_bit_write(2),
      I4 => \temp_byte_to_write[1]_i_4_n_0\,
      I5 => temp_byte_to_write(3),
      O => \temp_byte_to_write[3]_i_1_n_0\
    );
\temp_byte_to_write[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter_bit_write(0),
      I1 => counter_bit_write(1),
      O => \temp_byte_to_write[3]_i_2_n_0\
    );
\temp_byte_to_write[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[1]_i_2_n_0\,
      I2 => \temp_byte_to_write[4]_i_2_n_0\,
      I3 => counter_bit_write(0),
      I4 => \temp_byte_to_write[1]_i_4_n_0\,
      I5 => temp_byte_to_write(4),
      O => \temp_byte_to_write[4]_i_1_n_0\
    );
\temp_byte_to_write[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_bit_write(2),
      I1 => counter_bit_write(1),
      O => \temp_byte_to_write[4]_i_2_n_0\
    );
\temp_byte_to_write[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[1]_i_2_n_0\,
      I2 => \temp_byte_to_write[4]_i_2_n_0\,
      I3 => counter_bit_write(0),
      I4 => \temp_byte_to_write[1]_i_4_n_0\,
      I5 => temp_byte_to_write(5),
      O => \temp_byte_to_write[5]_i_1_n_0\
    );
\temp_byte_to_write[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[6]_i_2_n_0\,
      I2 => temp_byte_to_write(6),
      O => \temp_byte_to_write[6]_i_1_n_0\
    );
\temp_byte_to_write[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \temp_byte_to_write[1]_i_2_n_0\,
      I1 => counter_bit_write(2),
      I2 => counter_bit_write(1),
      I3 => counter_bit_write(0),
      I4 => \temp_byte_to_write[1]_i_4_n_0\,
      O => \temp_byte_to_write[6]_i_2_n_0\
    );
\temp_byte_to_write[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => \temp_byte_to_write[0]_i_2_n_0\,
      I1 => \temp_byte_to_write[7]_i_2_n_0\,
      I2 => \temp_byte_to_write[1]_i_2_n_0\,
      I3 => \temp_byte_to_write[1]_i_4_n_0\,
      I4 => temp_byte_to_write(7),
      O => \temp_byte_to_write[7]_i_1_n_0\
    );
\temp_byte_to_write[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter_bit_write(1),
      I1 => counter_bit_write(0),
      I2 => counter_bit_write(2),
      O => \temp_byte_to_write[7]_i_2_n_0\
    );
\temp_byte_to_write_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[0]_i_1_n_0\,
      Q => temp_byte_to_write(0),
      R => '0'
    );
\temp_byte_to_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[1]_i_1_n_0\,
      Q => temp_byte_to_write(1),
      R => '0'
    );
\temp_byte_to_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[2]_i_1_n_0\,
      Q => temp_byte_to_write(2),
      R => '0'
    );
\temp_byte_to_write_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[3]_i_1_n_0\,
      Q => temp_byte_to_write(3),
      R => '0'
    );
\temp_byte_to_write_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[4]_i_1_n_0\,
      Q => temp_byte_to_write(4),
      R => '0'
    );
\temp_byte_to_write_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[5]_i_1_n_0\,
      Q => temp_byte_to_write(5),
      R => '0'
    );
\temp_byte_to_write_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[6]_i_1_n_0\,
      Q => temp_byte_to_write(6),
      R => '0'
    );
\temp_byte_to_write_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_byte_to_write[7]_i_1_n_0\,
      Q => temp_byte_to_write(7),
      R => '0'
    );
\temp_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(3),
      I2 => \temp_state[2]_i_2_n_0\,
      I3 => temp_state(0),
      O => \temp_state[0]_i_1_n_0\
    );
\temp_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cur_state(1),
      I1 => \temp_state[2]_i_2_n_0\,
      I2 => temp_state(1),
      O => \temp_state[1]_i_1_n_0\
    );
\temp_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => \temp_state[2]_i_2_n_0\,
      I3 => temp_state(2),
      O => \temp_state[2]_i_1_n_0\
    );
\temp_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8333000030000000"
    )
        port map (
      I0 => \cur_state[4]_i_5_n_0\,
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => \num_bytes[8]_i_3_n_0\,
      I5 => cur_state(2),
      O => \temp_state[2]_i_2_n_0\
    );
\temp_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_state[0]_i_1_n_0\,
      Q => temp_state(0),
      R => '0'
    );
\temp_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_state[1]_i_1_n_0\,
      Q => temp_state(1),
      R => '0'
    );
\temp_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => o_address_regn_0_0,
      CE => '1',
      D => \temp_state[2]_i_1_n_0\,
      Q => temp_state(2),
      R => '0'
    );
end STRUCTURE;
