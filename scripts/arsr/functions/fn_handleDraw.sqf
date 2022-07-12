params ["_originatorPos","_interceptPos","_interceptTime"];
// We delete pre existing markers
deleteMarkerLocal("_USER_DEFINED" + str _interceptPos);
// We allow the user to delete the marker
private _arrow = createMarkerLocal [("_USER_DEFINED" + str _interceptPos), _interceptPos];
_arrow setMarkerType "hd_arrow";
_arrow setMarkerColor "ColorRed";
_arrow setMarkerDir (_interceptPos getDir _originatorPos);
