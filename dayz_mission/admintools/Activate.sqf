waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["117938630","126019334","117883654","108405574","122391302","152713862","106688006","109474886","152655174","128735814"]) then {
	sleep 30;
	player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\Eexcute.sqf","",5,false,true,"",""];
};