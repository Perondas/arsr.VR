params ["", "_inAccurateOriginalPos", "_interceptPos", "", "", "_maxRange"];
// We delete pre existing markers

deleteMarkerLocal("_USER_DEFINED" + str _interceptPos);
// We allow the user to delete the marker
private _marker = createMarkerLocal [("_USER_DEFINED" + str _interceptPos), _interceptPos];
_marker setMarkerColorLocal "ColorRed";
_marker setMarkerShapeLocal "polyline";

private _polyLine = [];
{
    _polyLine pushBack (_x select 0);
    _polyLine pushBack (_x select 1);
} forEach [_interceptPos, _interceptPos getPos [_maxRange, (_interceptPos getDir _inAccurateOriginalPos)]];

_marker setMarkerPolylineLocal _polyLine;
