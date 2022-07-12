params ["_originatorPos", "", ""];

if !(_originatorPos in arsr_posCache) then {
    arsr_posCache pushBack _originatorPos;
    systemChat "Artillery shot detected! Drawing on map!";
    [{
        arsr_posCache = arsr_posCache - [_this];
    }, _originatorPos, 10] call CBA_fnc_waitAndExecute ;
};
switch (arsr_drawStyle) do {
    case 0: arsr_fnc_drawArrows;
    case 1: arsr_fnc_drawLines;
    case 2: arsr_fnc_drawCones;
    default arsr_fnc_drawArrow;
};
