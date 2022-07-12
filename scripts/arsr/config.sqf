// The time that a listener will take between hearing a shot fired, and displaying the direction
arsr_calcDelay = 20;
// The speed of sound used for delay calculations
arsr_speedOfSound = 340;
// The classes of artillery that should be listened to, including all inheriting classes
arsr_artilleryBaseClasses = ["B_MBT_01_arty_F"];
// The classes of vehicles that should be listening, no inheritance
arsr_listenerClasses = ["B_Truck_01_ammo_F"];
// Flag if a vehicel has to be stationary to be considered a listener
arsr_vicStationary = true;
// Flag if a vehicle has to have its engine off to be considered a listener
arsr_vicEngineOff = true;