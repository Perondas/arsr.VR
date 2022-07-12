if !(isServer) exitWith {};

arsr_listeners = [];
{
    [_x, "init", {
        params ["_vehicle"];
        arsr_listeners pushBack _vehicle;
    }, false, [], true] call CBA_fnc_addClassEventHandler;

    [_x, "Killed", {
        params ["_vehicle"];
        arsr_listeners = arsr_listeners - [_vehicle, objNull];
    }, false, [], true] call CBA_fnc_addClassEventHandler;
} forEach arsr_listenerClasses;

{
    [_x,"Fired", {_this call arsr_fnc_handleFired}, true, [], true] call CBA_fnc_addClassEventHandler;
} forEach arsr_artilleryBaseClasses;
