waitUntil {alive player};

while {true} do
{
	_kills = 		player getVariable["zombieKills",0];
	_killsH = 		player getVariable["humanKills",0];
	_killsB = 		player getVariable["banditKills",0];
	_humanity =		player getVariable["humanity",0];
	
	hintSilent parseText format ["
	<t size='1.15' font='Bitstream'align='center' color='#D60000'>NO PVP on Large Island</t><br/>
	<t size='1.25' font='Bitstream'align='center' color='#5882FA'>Palerider's Super Awesome Fun Server</t><br/>
	<t size='1.15' font='Bitstream'align='center' color='#5882FA'>www.tfhm.boards.net</t><br/>
	<t size='1.15' font='Bitstream'align='center' color='#5882FA'>Survived %2 Days</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Players Online: </t><t size='0.95 'font='Bitstream' align='right'>%3</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='0.95' font='Bitstream' align='right'>%4</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='0.95' font='Bitstream' align='right'>%5</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Zombies Killed: </t><t size='0.95' font='Bitstream' align='right'>%6</t><br/>
	<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Humanity: </t><t size='0.95' font='Bitstream' align='right'>%7</t><br/>
    <t size='0.95' font='Bitstream' align='left' color='#FFBF00'>Blood: </t><t size='0.95' font='Bitstream' align='right'>%8</t><br/>
    <t size='0.95' font='Bitstream' align='left' color='#FFBF00'>FPS: </t><t size='0.95' font='Bitstream' align='right'>%9</t><br/>
	<t size='1.15' font='Bitstream'align='center' color='#5882FA'>Restart in %10 Minutes</t><br/>",

	dayz_playerName,(dayz_Survived),(count playableUnits),_killsH,_killsB,_kills,round _humanity,r_player_blood,(round diag_fps),(round(360-(serverTime) / 60))
	];
sleep 1;
};