/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {3000}; //Drivers License cost
	case "boat": {7000}; //Boating license cost
	case "pilot": {10000}; //Pilot/air license cost
	case "gun": {15000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {200000}; //Oil processing license cost
	case "cair": {1500}; //Cop Pilot License cost
	case "swat": {3500}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {300000}; //Heroin processing license cost
	case "marijuana": {275000}; //Marijuana processing license cost
	case "medmarijuana": {150000}; //Medical Marijuana processing license cost
	case "gang": {200000}; //Gang license cost
	case "rebel": {3000000}; //Rebel license cost
	case "truck": {40000}; //Truck license cost
	case "diamond": {25000};
	case "salt": {15000};
	case "cocaine": {500000};
	case "sand": {120000};
	case "iron": {15000};
	case "copper": {20000};
	case "cement": {180000};
	case "mair": {15000};
	case "home": {75000};
};