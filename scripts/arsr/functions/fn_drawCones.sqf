params ["", "_inAccurateOriginalPos", "_interceptPos", "", "_accuracy", "_maxRange"];
// We delete pre existing markers

deleteMarkerLocal("_USER_DEFINED" + str _interceptPos);
// We allow the user to delete the marker
private _marker = createMarkerLocal [("_USER_DEFINED" + str _interceptPos), _interceptPos];
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerShapeLocal "polyline";

private _vector1 = vectorNormalized (_interceptPos vectorFromTo (_inAccurateOriginalPos getPos [_accuracy/2, (_interceptPos getDir _inAccurateOriginalPos) + 90]));
private _vector2 = vectorNormalized (_interceptPos vectorFromTo (_inAccurateOriginalPos getPos [_accuracy/2, (_interceptPos getDir _inAccurateOriginalPos) - 90]));

private _polyLine = [];
{
    _polyLine pushBack (_x select 0);
    _polyLine pushBack (_x select 1);
} forEach [
    _interceptPos,
    _interceptPos vectorAdd (_vector1 vectorMultiply _maxRange),
    _interceptPos vectorAdd (_vector2 vectorMultiply _maxRange),
    _interceptPos
];

_marker setMarkerPolylineLocal _polyLine;
