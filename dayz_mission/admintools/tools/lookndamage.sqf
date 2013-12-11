if (isnil ("Repair")) then 
{
    Repair = 0;
};
 
if (Repair==0) then
{
    cutText ["LOOK N DAMAGE activated. Test: USE WITH CAUTION!!!!!", "PLAIN"];
    Repair=1;
}
else
{
    cutText ["LOOK N DAMAGE deactivated.", "PLAIN"];
    Repair=0;
};
 
RepairIT = "while {Repair==1} do{cursorTarget setdammage 0.8;sleep 0.5;cursorTarget setvehicleammo 1;sleep 0.5;cursorTarget setfuel 1;sleep 0.05;};";
 
[] spawn compile RepairIT;