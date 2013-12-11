/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	1473;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

// Enabling this option will disable the instant map features involving player healing and loadout changes
dayz_REsec = 0; // DayZ RE Security / 1 = enabled // 0 = disabled

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;

// DayZ Epoch config
spawnShoremode = 0; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxHeliCrashes= 30; // Default = 5
MaxVehicleLimit = 800; // Default = 50
MaxDynamicDebris = 300; // Default = 100
dayz_MapArea = 14000; // Default = 10000
DZE_BuildingLimit = 300; //Default = 150
dayz_maxLocalZombies = 30; // Default = 30
dayz_tameDogs = true; // Default = false
DZE_TRADER_SPAWNMODE = true; // Default = false
MaxMineVeins = 75;
MaxAmmoBoxes = 50;
dayz_sellDistance = 45;
DZE_DeathMsgGlobal = true; // Default = false
DZE_teleport = [25000,25000,25000,25000,25000];    // Default 1000,2000,500,200,800 
dayz_maxLocalZombies = 15; // Default = 30 


DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 85; // Default: 100
DynamicVehicleFuelLow = 15;
DynamicVehicleFuelHigh = 100;

DZE_vehicleAmmo = 1; //Default = 0, deletes ammo from vehicles with machine guns every restart if set to 0.
DZE_BackpackGuard = false; //Default = True, deletes backpack contents if logging out or losing connection beside another player if set to true.
DZE_BuildingLimit = 150; //Default = 150, decides how many objects can be built on the server before allowing any others to be built. Change value for more buildings.
DZE_TRADER_SPAWNMODE = true; //Vehicles bought with traders will parachute in instead of just spawning on the ground.
dayz_fullMoonNights = true;

// DZEdebug = true;

//Load in compiled functions
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "dayz_code\variables.sqf";
progressLoadingScreen 0.1;
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
call compile preprocessFileLineNumbers "dayz_code\publicEH.sqf";
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
// WARNING: If you need to modify the compiles.sqf and want to maintain the ability to drag/drop players on the map
//			then you must know what you are doing as we had to make an exclusion to the anti-teleport code.
//			Unfortunately we're forced to include this in the mission file.... I hate this workaround.
//			Maybe I'll think of something better later. - BP @ DayZ.ST
call compile preprocessFileLineNumbers "ATPExclusion\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

/* BIS_Effects_* fixes from Dwarden */
BIS_Effects_EH_Killed = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\killed.sqf";
BIS_Effects_AirDestruction = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestruction.sqf";
BIS_Effects_AirDestructionStage2 = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestructionStage2.sqf";

BIS_Effects_globalEvent = {
	BIS_effects_gepv = _this;
	publicVariable "BIS_effects_gepv";
	_this call BIS_Effects_startEvent;
};

BIS_Effects_startEvent = {
	switch (_this select 0) do {
		case "AirDestruction": {
				[_this select 1] spawn BIS_Effects_AirDestruction;
		};
		case "AirDestructionStage2": {
				[_this select 1, _this select 2, _this select 3] spawn BIS_Effects_AirDestructionStage2;
		};
		case "Burn": {
				[_this select 1, _this select 2, _this select 3, false, true] spawn BIS_Effects_Burn;
		};
	};
};

"BIS_effects_gepv" addPublicVariableEventHandler {
	(_this select 1) call BIS_Effects_startEvent;
};

if ((!isServer) && (isNull player) ) then
{
waitUntil {!isNull player};
waitUntil {time > 3};
};

if ((!isServer) && (player != player)) then
{
  waitUntil {player == player}; 
  waitUntil {time > 3};
};

if (isServer) then {
	call compile preprocessFileLineNumbers "dynamic_vehicle.sqf";				//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	_void = [] execVM "R3F_Realism\R3F_Realism_Init.sqf";
	
	//Lights
	//[0,0,true,true,true,58,280,600,[0.698, 0.556, 0.419],"Generator_DZ",0.1] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
};

///////////////////////////////////////////////////////////////////////////////////////////
// Sarge AI Area 

call compile preprocessFileLineNumbers "addons\UPSMON\scripts\Init_UPSMON.sqf";				// UPSMON (Needed for Sarge)
call compile preprocessfile "addons\SHK_pos\shk_pos_init.sqf";								// SHK (Needed for Sarge)
[] ExecVM "addons\SARGE\SAR_AI_init.sqf";													// SARGE AI - Roaming AI Survivor, Military and Bandit Groups

// For Custom Configuration see addons/SARGE/SAR_config.sqf
///////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////
// Logistics Area

[] ExecVM "custom\kh_actions.sqf";														    // Refuel Script  
[] ExecVM "R3F_ARTY_AND_LOG\init.sqf";														// R3F Logistics

// For more Refuel Locations add object classes to Line 14 of custom\kh_actions.sqf
// Limited Towing/Lifting/Cargo - See R3F_ARTY_AND_LOG\R3F_LOG\config.sqf
///////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////
// Admin Tools added by Traffiq
[] execVM "admintools\Activate.sqf";												 	// In-game Admin Tool Menu.
[] execVM "custom_monitor.sqf";                                                         // In-game Debug Monitor

// Modify the "######" tags in Activate.sqf AdminToolsMain.sqf and with your Admins/Mods player ID's
/////////////////////////////////////////////////////////////////////////////////////////

if (dayz_REsec == 1) then {
#include "\z\addons\dayz_code\system\REsec.sqf"
};
