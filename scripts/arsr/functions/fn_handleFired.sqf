params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

{
	private _distance = _x distance _unit;
	private _soundDelay = _distance / arsr_speedOfSound;
	private _originatorPos = getPos _unit;
	[{
		params ["_originatorPos","_vic"];
		if (isNil "_vic") exitWith {};
		if (!alive _vic) exitWith {};
		if (arsr_vicStationary && {speed _vic isNotEqualTo 0}) exitWith {};
		if (arsr_vicEngineOff && {isEngineOn _vic}) exitWith {};
		private _interceptPos = getPos _vic;
		private _interceptTime = date;
		private _calcDelay = _vic getVariable ["arsr_calcDelay", arsr_calcDelay];

		[{
			params ["_originatorPos","_interceptPos","_vic","_interceptTime"];
			if (isNil "_vic") exitWith {};
			if (!alive _vic) exitWith {};
			private _targets = ([] call CBA_fnc_players) select {alive _x && {_x getVariable ["arsr_receptionAllowed", false]}};
			["arsr_drawData",[_originatorPos,_interceptPos,_interceptTime],_targets] call CBA_fnc_targetEvent;
		},[_originatorPos,_interceptPos,_vic,_interceptTime], _calcDelay] call CBA_fnc_waitAndExecute;

	}, [_originatorPos,_x], _soundDelay] call CBA_fnc_waitAndExecute;
} foreach arsr_listeners;