#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",1500],
			["C_Kart_01_Fuel_F",1500],
			["C_Kart_01_Red_F",1500],
			["C_Kart_01_Vrana_F",1500]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",7000],
			["I_Truck_02_medical_F",15000],
			["O_Truck_03_medical_F",16000],
			["B_Truck_01_medical_F",20000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",4000],
			["C_Hatchback_01_F",14000],
			["C_Offroad_01_F",30000],
			["C_SUV_01_F",50000],
			["C_Van_01_transport_F",99000]

		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",375000],
			["I_Truck_02_transport_F",640000],
			["I_Truck_02_covered_F",820000],
			["B_Truck_01_transport_F",1350000],
			["O_Truck_03_transport_F",860000],
			["O_Truck_03_covered_F",960000],
			["B_Truck_01_box_F",1500000],
			["O_Truck_03_device_F",1800000]


		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",4000],
			["B_G_Offroad_01_F",30000],
			["O_MRAP_02_F",60000],
			["B_Heli_Light_01_F",1350000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		if(__GETC__(life_coplevel) > 0) then
		{
			_return pushBack
			["C_Hatchback_01_sport_F",5500];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack
			["C_SUV_01_F",10000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",20000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",1350000],
			["O_Heli_Light_02_unarmed_F",2250000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",20000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",20000];
			_return pushBack
			["B_MRAP_01_hmg_F",75000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",2000],
			["B_Boat_Armed_01_minigun_F",7500],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
