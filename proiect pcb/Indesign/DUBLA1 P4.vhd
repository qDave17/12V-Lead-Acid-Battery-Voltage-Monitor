LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SCHEMATIC1 IS 

END SCHEMATIC1;



ARCHITECTURE STRUCTURE OF SCHEMATIC1 IS

-- COMPONENTS

COMPONENT LM3914
	PORT (
	SIGIN : IN std_logic;
	\V+\ : IN std_logic;
	\V-\ : IN std_logic;
	REFOUT : OUT std_logic;
	MODE : IN std_logic;
	RLO : INOUT std_logic;
	RHI : INOUT std_logic;
	\REF ADJ\ : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic;
	LED8 : OUT std_logic;
	LED9 : OUT std_logic;
	LED10 : OUT std_logic
	); END COMPONENT;

COMPONENT \4.7k\
	PORT (
	\1\ : INOUT std_logic;
	\2\ : INOUT std_logic
	); END COMPONENT;

COMPONENT \10uF/50V\
	PORT (
	\1\ : INOUT std_logic;
	\2\ : INOUT std_logic
	); END COMPONENT;

COMPONENT \BATTERY 12 VDC\
	PORT (
	\1\ : INOUT std_logic;
	\2\ : INOUT std_logic
	); END COMPONENT;

COMPONENT \100nF\
	PORT (
	\1\ : INOUT std_logic;
	\2\ : INOUT std_logic
	); END COMPONENT;

COMPONENT \MODE JUMPER\
	PORT (
	\1\ : INOUT std_logic;
	\2\ : INOUT std_logic
	); END COMPONENT;

COMPONENT \RED LED\
	PORT (
	ANODE : INOUT std_logic;
	CATHODE : INOUT std_logic
	); END COMPONENT;

COMPONENT \4.7K/5K PRESET\
	PORT (
	A : INOUT std_logic;
	B : INOUT std_logic;
	WIPER : INOUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL \+12V\ : std_logic;
SIGNAL GND : std_logic;
SIGNAL N00786 : std_logic;
SIGNAL N00798 : std_logic;
SIGNAL N00816 : std_logic;
SIGNAL N00828 : std_logic;
SIGNAL N01011 : std_logic;
SIGNAL N01038 : std_logic;
SIGNAL N01063 : std_logic;
SIGNAL N01185 : std_logic;
SIGNAL N01208 : std_logic;
SIGNAL N01233 : std_logic;
SIGNAL N01392 : std_logic;
SIGNAL N01765 : std_logic;
SIGNAL N01847 : std_logic;
SIGNAL N02323 : std_logic;
SIGNAL N05807 : std_logic;
SIGNAL N05934 : std_logic;

-- INSTANCE ATTRIBUTES



-- GATE INSTANCES

BEGIN
U1 : LM3914	PORT MAP(
	SIGIN => N05807, 
	\V+\ => \+12V\, 
	\V-\ => GND, 
	REFOUT => N01765, 
	MODE => N02323, 
	RLO => N01847, 
	RHI => N01765, 
	\REF ADJ\ => N01847, 
	LED1 => N00786, 
	LED2 => N00798, 
	LED3 => N00816, 
	LED4 => N00828, 
	LED5 => N01011, 
	LED6 => N01038, 
	LED7 => N01063, 
	LED8 => N01185, 
	LED9 => N01208, 
	LED10 => N01233
);
R1 : \4.7k\	PORT MAP(
	\1\ => \+12V\, 
	\2\ => N01392
);
R2 : \1.2 K\	PORT MAP(
	\1\ => N01765, 
	\2\ => N05934
);
C1 : \10uF/50V\	PORT MAP(
	\1\ => \+12V\, 
	\2\ => GND
);
CN1 : \BATTERY 12 VDC\	PORT MAP(
	\1\ => \+12V\, 
	\2\ => GND
);
C2 : \100nF\	PORT MAP(
	\1\ => \+12V\, 
	\2\ => GND
);
J1 : \MODE JUMPER\	PORT MAP(
	\1\ => \+12V\, 
	\2\ => N02323
);
D10 : \RED LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N01233
);
D1 : \YELLOW LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N00786
);
D2 : \YELLOW LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N00798
);
D3 : \YELLOW LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N00816
);
D4 : \GREEN LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N00828
);
D5 : \GREEN LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N01011
);
D6 : \GREEN LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N01038
);
D7 : \GREEN LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N01063
);
D8 : \GREEN LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N01185
);
D9 : \RED LED\	PORT MAP(
	ANODE => \+12V\, 
	CATHODE => N01208
);
PR1 : \4.7K/5K PRESET\	PORT MAP(
	A => GND, 
	B => N01847, 
	WIPER => N05934
);
PR2 : \4.7K/5K PRESET\	PORT MAP(
	A => N01392, 
	B => GND, 
	WIPER => N05807
);
END STRUCTURE;

