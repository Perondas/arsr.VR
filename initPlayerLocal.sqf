params ["_player", "_didJIP"];
enableSaving [false, false];
// This will show the sound ranging to all players
_player setVariable ["arsr_receptionAllowed", true, true];


{
    [_x, "init", {
        params ["_vehicle"];
        // _vehicle setVariable ["arsr_side", blufor, true];
    }, false, [], true] call CBA_fnc_addClassEventHandler;
} forEach arsr_listenerClasses;
