#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
if(str(player) in ["cop_16"]) then {
	if((__GETC__(life_coplevel) < 7) && (__GETC__(life_adminlevel) < 2)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
if(str(player) in ["cop_6"] || str(player) in ["cop_7"] || str(player) in ["cop_8"]) then {
	if((__GETC__(life_coplevel) < 4)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
if(str(player) in ["cop_2"] || str(player) in ["cop_3"] || str(player) in ["cop_4"] || str(player) in ["cop_10"] || str(player) in ["cop_11"]) then {
	if((__GETC__(life_coplevel) < 1)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
if(str(player) in ["cop_5"] || str(player) in ["cop_9"] || str(player) in ["cop_12"] || str(player) in ["cop_13"] || str(player) in ["cop_14"]) then {
	if((__GETC__(life_coplevel) < 2)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
if(str(player) in ["cop_18"]) then {
	if((__GETC__(life_coplevel) < 6)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.


[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"textures\police_shirt.paa"];
waitUntil {uniform player != "U_Rangemaster"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam_tshirt"};
player setObjectTextureGlobal [0,"textures\police_shirt.paa"];
waitUntil {uniform player != "U_B_CombatUniform_mcam_tshirt"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
player setObjectTextureGlobal [0,"textures\sniper_shirt.paa"];
waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "V_Rangemaster_belt"};
player setObjectTextureGlobal [0,"textures\police_vest.paa"];
waitUntil {uniform player != "V_Rangemaster_belt"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "V_PlateCarrier2_rgr"};
player setObjectTextureGlobal [0,"textures\swat_s_vest.paa"];
waitUntil {uniform player != "V_PlateCarrier2_rgr"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "H_MilCap_mcamo"};
player setObjectTextureGlobal [0,"textures\swat_s_cap.paa"];
waitUntil {uniform player != "H_MilCap_mcamo"};
};
};