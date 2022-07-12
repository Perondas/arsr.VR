#include "../initSettings.sqf";

if !(hasInterface) exitWith {};
arsr_posCache = [];
["arsr_drawData", {call arsr_fnc_handleDraw}] call CBA_fnc_addEventHandler;
