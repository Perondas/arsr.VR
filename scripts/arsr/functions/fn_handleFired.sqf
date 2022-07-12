params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

//TODO: only check when main cannon is fired

private _originatorPos = getPos _unit;
private _time = time;

{
    private _distance =  _x distance _unit;
    private _soundDelay = _distance / arsr_speedOfSound;
    [{
        params [["_originatorPos", [0, 0, 0]], ["_vic", objNull], ["_time", 0]];
        if !(alive _vic) exitWith {};
        if (arsr_vicStationary && {(speed _vic) isNotEqualTo 0}) exitWith {};
        if (arsr_vicEngineOff && {isEngineOn _vic}) exitWith {};
        if ((_originatorPos distance _vic) > (_vic getVariable ["arsr_listenerMaxDistance", arsr_listenerMaxDistance])) exitWith {};

        [{
            params ["_originatorPos", "_inAccurateOriginalPos", "_interceptPos", "_vic", "_interceptTime"];
            if !(alive _vic) exitWith {};
            private _targets = ([] call CBA_fnc_players) select {alive _x && {_x getVariable ["arsr_receptionAllowed", false]}};
            ["arsr_drawData", [
                _originatorPos,
                _inAccurateOriginalPos,
                _interceptPos,
                format ["%1#%2", _originatorPos, _interceptTime],
                _vic getVariable ["arsr_listenerAccuracy", arsr_listenerAccuracy],
                _vic getVariable ["arsr_listenerMaxDistance", arsr_listenerMaxDistance]
            ], _targets] call CBA_fnc_targetEvent;
        },[
            _originatorPos,
            _originatorPos getPos [random (_vic getVariable ["arsr_listenerAccuracy", arsr_listenerAccuracy]), 360],
            getPos _vic,
            _vic,
            _time
        ], _vic getVariable ["arsr_calcDelay", arsr_calcDelay]] call CBA_fnc_waitAndExecute;

    }, [_originatorPos, _x, _time], _soundDelay] call CBA_fnc_waitAndExecute;
} foreach (arsr_listeners select {_x getVariable ["arsr_enabled", true]});
