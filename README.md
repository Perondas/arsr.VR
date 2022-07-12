# arsr.VR

An Arma3 artillery sound ranging script

## Variables

It is possible to set variables on units and vehicles to mark them for a specific side or overrule the general settings.

It is important that the variables are set for the server, as all calculation and checking is done on it, that is why the synchronisation flag (third option of `setVariable`) is set to `true` in the examples.

### **arsr_receptionAllowed**

_Boolean_

Sets the _player unit_ as sound data receiver. Enables the player to see the markers on map regarding the sound ranging. Only player units are supported, no AI units or vehicles. Default this variable is regarded as `false`.

```sqf
player setVariable ["arsr_receptionAllowed", true, true];
```

### arsr_enabled

_Boolean_

Variable on a _listening vehicle_ to enable or disable its active listening capabillity. If not set, it is assumed the vehicle is listening and the variable value is `true`.

```sqf
_listener setVariable ["arsr_enabled", false, true];
```

### arsr_listenerCalcDelay

_Positive Number or 0_

Variable on a _listening vehicle_ to overrule the "Addon Options" value for the "Time to calculate for listener" setting.

```sqf
_listener setVariable ["arsr_listenerCalcDelay", 0, true];
```

### arsr_listenerAccuracy

_Positive Number or 0_

Variable on a _listening vehicle_ to overrule the "Addon Options" value for the "Listener accuracy" setting.

```sqf
_listener setVariable ["arsr_listenerAccuracy", 0, true];
```

### arsr_listenerMaxDistance

_Number_

Variable on a _listening vehicle_ to overrule the "Addon Options" value for the "Listener max listening distance" setting.

```sqf
_listener setVariable ["arsr_listenerMaxDistance", 0, true];
```

### arsr_side

_Group Side_

Variable on a _listening vehicle_ to set it which side it belongs to and ignores artillery fire from that side. If not set, it will pick up and report fire from any artilllery piece from any side.

```sqf
_listener setVariable ["arsr_side", blufor, true];
```
