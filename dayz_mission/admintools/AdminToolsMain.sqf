_pathtotools = "admintools\tools\";
_pathtoskins = "admintools\skins\";
_pathtoweapon = "admintools\weaponkits\";
_pathtoshields = "admintools\shields\";
_pathtovehicles = "admintools\vehicles\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoskins+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtoshields+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
//customise these menus to fit your server
if ((getPlayerUID player) in ["117938630","126019334","117883654","108405574","122391302","152713862","106688006","109474886","152655174","128735814"]) then { //all admins
	if ((getPlayerUID player) in ["106688006","109474886","152655174","128735814"]) then { //mods
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:ModToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Weapon Kits", [3], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
				["Shields Menu", [4], "#USER:ShieldMenu", -5, [["expression", ""]], "1", "1"],				
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["********"]) then { //admins
        adminmenu =
        [
			["",true],
			    ["Tools Menu", [2], "#USER:AdminToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Skins Menu", [3], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
				["Shields Menu", [4], "#USER:ShieldMenu", -5, [["expression", ""]], "1", "1"],
				["Weapon Kits", [5], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
				["VehicleMenuMod", [6], "#USER:VehicleMenuMod", -5, [["expression", ""]], "1", "1"],				
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["117938630","126019334","152713862","108405574"]) then { // super admins
		adminmenu =
		[
			["",true],
				["Tools Menu", [2], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Skins Menu", [3], "#USER:SkinsMenu", -5, [["expression", ""]], "1", "1"],
				["Weapon Kits", [4], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
				["Shields Menu", [5], "#USER:ShieldMenu", -5, [["expression", ""]], "1", "1"],
				["Vehicle Menu", [6], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
};
//customise to fit
ModToolsMenu =
[
	["",true],
		["God Mode", [3],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],	
		["Look-N-Repair", [3],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
		["Teleport To Me", [4], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["Heal Player(s)", [5],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//customise to fit
ModToolsMenualesha =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
		["Car God", [3],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Heal Player(s)", [4],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Look-N-Repair", [5],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
		["Repair Buildings", [6],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
		["Spectate Player", [7],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [8], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["Look-N-Damage | Test!!", [9],  "", -5, [["expression", format[_EXECscript1,"lookndamage.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//customise to fit
AdminToolsMenu =
[
	["",true],
		["ESP / Tele", [2],  "", -5, [["expression", format[_EXECscript1,"dayzesp.sqf"]]], "1", "1"],
		["God Mode", [3],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
		["Car God", [4],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Heal Player(s)", [5],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Look-N-Repair", [6],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],
		["Look-N-Damage | Test!!", [7],  "", -5, [["expression", format[_EXECscript1,"lookndamage.sqf"]]], "1", "1"],
		["Repair Buildings", [8],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
		["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["ESP / Tele", [2],  "", -5, [["expression", format[_EXECscript1,"dayzesp.sqf"]]], "1", "1"],
		["God Mode", [3],  "", -5, [["expression", format[_EXECscript1,"Godmode.sqf"]]], "1", "1"],
		["Car God", [4],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Heal Player(s)", [5],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Look-N-Repair", [6],  "", -5, [["expression", format[_EXECscript1,"looknrepair.sqf"]]], "1", "1"],	
		["Look-N-Damage | Test!!", [7],  "", -5, [["expression", format[_EXECscript1,"lookndamage.sqf"]]], "1", "1"],
		["Spectate Player", [8],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [9], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:ToolsMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu2 = 
[
["",true],
		["Flip Vehicle", [2],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		["Repair Buildings", [3],  "", -5, [["expression", format[_EXECscript1,"fixbuildings.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SkinsMenu =
[
	["",true],
		["Hero", [2],  "", -5, [["expression", format[_EXECscript2,"Hero.sqf"]]], "1", "1"],
		["Camo", [3],  "", -5, [["expression", format[_EXECscript2,"Camo.sqf"]]], "1", "1"],
		["Desert Ghillie", [4],  "", -5, [["expression", format[_EXECscript2,"Ghille.sqf"]]], "1", "1"],
		["Camel Jockey", [5],  "", -5, [["expression", format[_EXECscript2,"Male.sqf"]]], "1", "1"],
		["Soldier", [6],  "", -5, [["expression", format[_EXECscript2,"Soldier.sqf"]]], "1", "1"],
		["invisible", [7],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu =
[
	["",true],
		["No Weapons", [2],  "", -5, [["expression", format[_EXECscript3,"items.sqf"]]], "1", "1"],
		["M4 Holo", [3],  "", -5, [["expression", format[_EXECscript3,"itemz.sqf"]]], "1", "1"],
		["M4 CCO SD", [4],  "", -5, [["expression", format[_EXECscript3,"itemz2.sqf"]]], "1", "1"],
		["AS50", [5],  "", -5, [["expression", format[_EXECscript3,"itemz3.sqf"]]], "1", "1"],
		["FN FAL", [6],  "", -5, [["expression", format[_EXECscript3,"itemz4.sqf"]]], "1", "1"],
		["M16 ACOG", [7],  "", -5, [["expression", format[_EXECscript3,"itemz5.sqf"]]], "1", "1"],
		["Pecheneg 50 cal", [8],  "", -5, [["expression", format[_EXECscript3,"itemz6.sqf"]]], "1", "1"],
		["Mk 48", [9],  "", -5, [["expression", format[_EXECscript3,"item7.sqf"]]], "1", "1"],
		["Mk 12", [10],  "", -5, [["expression", format[_EXECscript3,"item8.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu2 =
[
	["",true],
		["Aks Kobra", [2],  "", -5, [["expression", format[_EXECscript3,"item9.sqf"]]], "1", "1"],
		[".338 LAPUA", [3],  "", -5, [["expression", format[_EXECscript3,"item10.sqf"]]], "1", "1"],
		["DMR", [4],  "", -5, [["expression", format[_EXECscript3,"item11.sqf"]]], "1", "1"],
		["M4A1 HWS GL SD Camo", [5],  "", -5, [["expression", format[_EXECscript3,"item12.sqf"]]], "1", "1"],
		["M14 Aim", [6],  "", -5, [["expression", format[_EXECscript3,"item13.sqf"]]], "1", "1"],
		["Building Parts", [7],  "", -5, [["expression", format[_EXECscript3,"bp2.sqf"]]], "1", "1"],
		["Gold", [8],  "", -5, [["expression", format[_EXECscript3,"bp1.sqf"]]], "1", "1"],
		["Delete gear", [9],  "", -5, [["expression", format[_EXECscript3,"cleanme.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:WeaponMenu3", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//extra menu for custom kits remove "//" from lines below to use
WeaponMenu3 =
[
	["",true],
			//["", [2],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [3],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [4],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [5],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [6],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [7],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [8],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [9],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
			//["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

ShieldMenu =
[
	["",true],
		["Zombie Shield", [2],  "", -5, [["expression", format[_EXECscript4,"zombieshield.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu = 
[
	["",true],
		["AAV", [2],  "", -5, [["expression", format[_EXECscript5,"AAV.sqf"]]], "1", "1"],
		["Little Bird", [3],  "", -5, [["expression", format[_EXECscript5,"AH64.sqf"]]], "1", "1"],
		["an2", [4],  "", -5, [["expression", format[_EXECscript5,"an2_prop.sqf"]]], "1", "1"],
		["Apache", [5],  "", -5, [["expression", format[_EXECscript5,"APACHE.sqf"]]], "1", "1"],
		["MTVR fors", [6],  "", -5, [["expression", format[_EXECscript5,"MTVRf.sqf"]]], "1", "1"],
		["MTVR des", [7],  "", -5, [["expression", format[_EXECscript5,"MTVR.sqf"]]], "1", "1"],
		["ATV", [8],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
		["Bus", [9],  "", -5, [["expression", format[_EXECscript5,"BTR60.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu2 =
[
["",true],
		["Bus", [2],  "", -5, [["expression", format[_EXECscript5,"bus.sqf"]]], "1", "1"],
		["Armored HQ", [3],  "", -5, [["expression", format[_EXECscript5,"C130.sqf"]]], "1", "1"],
		["Chinook", [4],  "", -5, [["expression", format[_EXECscript5,"chinook.sqf"]]], "1", "1"],
		["F35", [5],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
		["Police Van", [6],  "", -5, [["expression", format[_EXECscript5,"FISH.sqf"]]], "1", "1"],
		["Kia Police", [7],  "", -5, [["expression", format[_EXECscript5,"FISH2.sqf"]]], "1", "1"],
		["Paleriders Car", [8],  "", -5, [["expression", format[_EXECscript5,"FISH3.sqf"]]], "1", "1"],
		["GRAD_INS", [9],  "", -5, [["expression", format[_EXECscript5,"GRAD_INS.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu3", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu3 =
[
["",true],
		["Hatchback", [2],  "", -5, [["expression", format[_EXECscript5,"Hatchback.sqf"]]], "1", "1"],
		["HMMWV_Avenger", [3],  "", -5, [["expression", format[_EXECscript5,"HMMWV_Avenger.sqf"]]], "1", "1"],
		["HMMV Armored", [4],  "", -5, [["expression", format[_EXECscript5,"HMMWV Armored.sqf"]]], "1", "1"],
		["KA60 Namal", [5],  "", -5, [["expression", format[_EXECscript5,"KA60_namalsk.sqf"]]], "1", "1"],
		["Red Lada", [6],  "", -5, [["expression", format[_EXECscript5,"ladared.sqf"]]], "1", "1"],
		["White Lada", [7],  "", -5, [["expression", format[_EXECscript5,"Ladawhite.sqf"]]], "1", "1"],
		["Little Bird", [8],  "", -5, [["expression", format[_EXECscript5,"littleBird.sqf"]]], "1", "1"],
		["MI17", [9],  "", -5, [["expression", format[_EXECscript5,"MI17civ.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu4", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu4 =
[
["",true],
		["MI24", [2],  "", -5, [["expression", format[_EXECscript5,"MI24.sqf"]]], "1", "1"],
		["Firetruck", [3],  "", -5, [["expression", format[_EXECscript5,"L39.sqf"]]], "1", "1"],
		["UH60", [4],  "", -5, [["expression", format[_EXECscript5,"UH60.sqf"]]], "1", "1"],
		["VW Golf", [5],  "", -5, [["expression", format[_EXECscript5,"miniHB.sqf"]]], "1", "1"],
		["MLRS_DES_EP1", [6],  "", -5, [["expression", format[_EXECscript5,"Moto.sqf"]]], "1", "1"],
		["BRDM2_ATGM_TK_EP1", [7],  "", -5, [["expression", format[_EXECscript5,"Moto2.sqf"]]], "1", "1"],
		["SeaFox", [8],  "", -5, [["expression", format[_EXECscript5,"Moto3.sqf"]]], "1", "1"],
		["Ka52Black", [9],  "", -5, [["expression", format[_EXECscript5,"Moto4.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu5", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu5 =
[
["",true],
		["MV22", [2],  "", -5, [["expression", format[_EXECscript5,"MV22.sqf"]]], "1", "1"],
		["AW159_Lynx_BAF", [3],  "", -5, [["expression", format[_EXECscript5,"Offroad.sqf"]]], "1", "1"],
		["BMP2_INS", [4],  "", -5, [["expression", format[_EXECscript5,"OFFROAD_d.sqf"]]], "1", "1"],
		["2S6M_Tunguska", [5],  "", -5, [["expression", format[_EXECscript5,"OFFROAD_w"]]], "1", "1"],
		["Red Offroad", [6],  "", -5, [["expression", format[_EXECscript5,"offroadRed.sqf"]]], "1", "1"],
		["BRDM2_HQ_Gue", [7],  "", -5, [["expression", format[_EXECscript5,"offroadSaffari.sqf"]]], "1", "1"],
		["AV8B", [8],  "", -5, [["expression", format[_EXECscript5,"offroadTan.sqf"]]], "1", "1"],
		["PBX", [9],  "", -5, [["expression", format[_EXECscript5,"PBX.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu6", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu6 =
[
["",true],
		["Sedan", [2],  "", -5, [["expression", format[_EXECscript5,"sedan.sqf"]]], "1", "1"],
		["SUV", [3],  "", -5, [["expression", format[_EXECscript5,"SUV.sqf"]]], "1", "1"],
		["MH6J", [4],  "", -5, [["expression", format[_EXECscript5,"MH6J.sqf"]]], "1", "1"],
		["Scud", [5],  "", -5, [["expression", format[_EXECscript5,"tank.sqf"]]], "1", "1"],
		["BAF FV510", [6],  "", -5, [["expression", format[_EXECscript5,"TANKfall.sqf"]]], "1", "1"],
		["APC", [7],  "", -5, [["expression", format[_EXECscript5,"TANKnam.sqf"]]], "1", "1"],
		["Kia Police Wagon", [8],  "", -5, [["expression", format[_EXECscript5,"taxi.sqf"]]], "1", "1"],
		["Stryker MGS", [9],  "", -5, [["expression", format[_EXECscript5,"Stryker MGS.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu7", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu7 =
[
["",true],
		["Merlin", [2],  "", -5, [["expression", format[_EXECscript5,"SU25.sqf"]]], "1", "1"],
		["VW Police", [3],  "", -5, [["expression", format[_EXECscript5,"Tractor.sqf"]]], "1", "1"],
		["CANON", [4],  "", -5, [["expression", format[_EXECscript5,"tubeframe.sqf"]]], "1", "1"],
		["UAZ", [5],  "", -5, [["expression", format[_EXECscript5,"UAZ.sqf"]]], "1", "1"],
		["Hilux Police", [6],  "", -5, [["expression", format[_EXECscript5,"Police_Hilux.sqf"]]], "1", "1"],
		["V3S Repair", [7],  "", -5, [["expression", format[_EXECscript5,"V3S_Repair_TK_GUE_EP1.sqf"]]], "1", "1"],
		["UH1H camo", [8],  "", -5, [["expression", format[_EXECscript5,"UH1H_TK.sqf"]]], "1", "1"],
		["Ural", [9],  "", -5, [["expression", format[_EXECscript5,"Ural.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu8", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu8 =
[
["",true],	
		["V3S", [2],  "", -5, [["expression", format[_EXECscript5,"V3S.sqf"]]], "1", "1"],
		["Van 2", [3],  "", -5, [["expression", format[_EXECscript5,"Van.sqf"]]], "1", "1"],
		["F35", [4],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenuMod = 
[
	["",true],
		["AAV", [2],  "", -5, [["expression", format[_EXECscript5,"AAV.sqf"]]], "1", "1"],
		["Little Bird", [3],  "", -5, [["expression", format[_EXECscript5,"AH64.sqf"]]], "1", "1"],
		["an2", [4],  "", -5, [["expression", format[_EXECscript5,"an2_prop.sqf"]]], "1", "1"],
		["Apache", [5],  "", -5, [["expression", format[_EXECscript5,"APACHE.sqf"]]], "1", "1"],
		["MTVR fors", [6],  "", -5, [["expression", format[_EXECscript5,"MTVRf.sqf"]]], "1", "1"],
		["MTVR des", [7],  "", -5, [["expression", format[_EXECscript5,"MTVR.sqf"]]], "1", "1"],
		["AV8B", [8],  "", -5, [["expression", format[_EXECscript5,"offroadTan.sqf"]]], "1", "1"],
		["BTR60", [9],  "", -5, [["expression", format[_EXECscript5,"BTR60.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenuMod2", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenuMod2 =
[
["",true],
		["Bus", [2],  "", -5, [["expression", format[_EXECscript5,"bus.sqf"]]], "1", "1"],
		["Armored HQ", [3],  "", -5, [["expression", format[_EXECscript5,"C130.sqf"]]], "1", "1"],
		["Chinook", [4],  "", -5, [["expression", format[_EXECscript5,"chinook.sqf"]]], "1", "1"],
		["F35", [5],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
		["Police Van", [6],  "", -5, [["expression", format[_EXECscript5,"FISH.sqf"]]], "1", "1"],
		["Kia Police", [7],  "", -5, [["expression", format[_EXECscript5,"FISH2.sqf"]]], "1", "1"],
		["Paleriders Car", [8],  "", -5, [["expression", format[_EXECscript5,"FISH3.sqf"]]], "1", "1"],
		["GRAD_INS", [9],  "", -5, [["expression", format[_EXECscript5,"GRAD_INS.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenuMod3", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenuMod3 =
[
["",true],
		["Hatchback", [2],  "", -5, [["expression", format[_EXECscript5,"Hatchback.sqf"]]], "1", "1"],
		["HMMWV_Avenger", [3],  "", -5, [["expression", format[_EXECscript5,"HMMWV_Avenger.sqf"]]], "1", "1"],
		["HMMV Armored", [4],  "", -5, [["expression", format[_EXECscript5,"HMMWV Armored.sqf"]]], "1", "1"],
		["KA60 Namal", [5],  "", -5, [["expression", format[_EXECscript5,"KA60_namalsk.sqf"]]], "1", "1"],
		["Red Lada", [6],  "", -5, [["expression", format[_EXECscript5,"ladared.sqf"]]], "1", "1"],
		["White Lada", [7],  "", -5, [["expression", format[_EXECscript5,"Ladawhite.sqf"]]], "1", "1"],
		["Little Bird", [8],  "", -5, [["expression", format[_EXECscript5,"littleBird.sqf"]]], "1", "1"],
		["MI17", [9],  "", -5, [["expression", format[_EXECscript5,"MI17civ.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenuMod4", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenuMod4 =
[
["",true],	
		["V3S", [2],  "", -5, [["expression", format[_EXECscript5,"V3S.sqf"]]], "1", "1"],
		["Van 2", [3],  "", -5, [["expression", format[_EXECscript5,"Van.sqf"]]], "1", "1"],
		["F35", [4],  "", -5, [["expression", format[_EXECscript5,"F35.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:adminmenu";