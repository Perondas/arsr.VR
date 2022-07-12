params ["", "_inAccurateOriginalPos", "_interceptPos", "_interceptTime"];
// We delete pre existing markers
deleteMarkerLocal("_USER_DEFINED" + str _interceptPos);
// We allow the user to delete the marker
private _arrow = createMarkerLocal [("_USER_DEFINED" + str _interceptPos), _interceptPos];
_arrow setMarkerTypeLocal "hd_arrow";
_arrow setMarkerColorLocal "ColorRed";
_arrow setMarkerDirLocal (_interceptPos getDir _inAccurateOriginalPos);
