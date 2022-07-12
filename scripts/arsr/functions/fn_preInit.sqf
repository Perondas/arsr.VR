#include "../config.sqf";

//["arsr_calcDelay",
//"SLIDER",
//[	"Calculation delay time",
//	"Time in seconds for the sound ranger to compute"],
//"Artillery sound ranging",
//[0,2000,50,0,false],
//true] call CBA_fnc_addSetting;

if !(hasInterface) exitWith {};
["arsr_drawData", {call arsr_fnc_handleDraw}] call CBA_fnc_addEventHandler;

