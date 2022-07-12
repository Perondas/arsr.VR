// ========= General =========

[
    "arsr_speedOfSound",
    "SLIDER",
    ["Speed of sound", "Speed of sound in meters per second. Higher means faster detection, lower means slower detection. Not really recommended to change unless you want to change how physics work"],
    ["Mission", "ARSR - General"],
    [1, 2000, 343, 2],
    true
] call CBA_fnc_addSetting;

[
    "arsr_artilleryBaseClassesSetting",
    "EDITBOX",
    ["Artillery classes", "The classes of artillery that should be listened to, including all inheriting classes!"],
    ["Mission", "ARSR - General"],
    "[""B_MBT_01_arty_F""]",
    true,
    {
        params ["_value"];
        // _value = toLower _value;
        arsr_artilleryBaseClasses = _value splitString "[,""']";
    }
] call CBA_fnc_addSetting;

[
    "arsr_listenerClassesSetting",
    "EDITBOX",
    ["Listener classes", "The classes of vehicles that should be listening, no inheritance!"],
    ["Mission", "ARSR - General"],
    "[""B_Truck_01_ammo_F""]",
    true,
    {
        params ["_value"];
        // _value = toLower _value;
        arsr_listenerClasses = _value splitString "[,""']";
    }
] call CBA_fnc_addSetting;

// ========= User settings =========

[
    "arsr_drawStyle",
    "LIST",
    ["Draw style", "Style how the listener data is being displayed"],
    ["Mission", "ARSR - User settings"],
    [[0, 1, 2], ["Arrows", "Lines", "Cones", 0]],
    false
] call CBA_fnc_addSetting;

// ========= Listener =========

[
    "arsr_calcDelay",
    "SLIDER",
    ["Time to calculate for listener", "The time that a listener will take between hearing a shot fired, and displaying the direction"],
    ["Mission", "ARSR - Listener"],
    [0, 120, 20, 0],
    true
] call CBA_fnc_addSetting;

[
    "arsr_vicStationary",
    "CHECKBOX",
    ["Listener must be stationary", "Listener must completely stand still in otdfer to listen"],
    ["Mission", "ARSR - Listener"],
    true,
    true
] call CBA_fnc_addSetting;

[
    "arsr_vicEngineOff",
    "CHECKBOX",
    ["Listener engine must be off", "Only allow ranging if the vehicles engine is off"],
    ["Mission", "ARSR - Listener"],
    true,
    true
] call CBA_fnc_addSetting;

[
    "arsr_listenerAccuracy",
    "SLIDER",
    ["Listener accuracy", "Value in meters, higher values mean less accurate"],
    ["Mission", "ARSR - Listener"],
    [0, 1000, 50, 0],
    true
] call CBA_fnc_addSetting;

[
    "arsr_listenerMaxDistance",
    "SLIDER",
    ["Listener max listening distance", "Value in meters, how far can listener vehicle detect shots"],
    ["Mission", "ARSR - Listener"],
    [0, 10000, 10000, 0],
    true
] call CBA_fnc_addSetting;

