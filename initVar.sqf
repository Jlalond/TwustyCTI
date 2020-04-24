// place holder for the config values
diag_log "Beginning init var";
if(isMultiplayer && !isServer) exitWith {};
if(isMultiplayer && isServer) then {
	server setVariable["ResistanceSkill", paramsArray select 0];
	server setVariable["TownDifficulty", paramsArray select 1];
	server setVariable["BluforCash", 5000];
	server setVariable["OpforCash", 5000];
};

currencyChanging = 0;

townsWest = [];
townsEast = [];

buildingsWest = [];
buildingsEast = [];

bluforGear = [];
opforGear = [];

bluforLightVehicles = [];
bluforHeavyVehicles = [];
bluforAircraft = [];
bluforGarrisonConfig = [];
bluforArsenalBox = "Land_CratesPlastic_F" createVehicle [20000, 20000];

opforLightVehicles = [];
opforHeavyVehicles = [];
opforAircraft = [];
opForGarrsionConfig = [];
opforArsenalBox = "Land_CratesPlastic_F" createVehicle [21000, 20000];

resistanceGarrisonConfig = [];

Blufor_CV = objNull;
Opfor_CV = objNull;

defaultGear = [
	"ItemMap",
	"ItemCompass",
	"ItemWatch",
	"ItemGPS"
];

// add stuff for vanilla medical otherwise
bluforGear = bluforGear + defaultGear;
opforGear = opforGear + defaultGear;

if(!isNil "ace_common_fnc_isModLoaded") then {
	call compile preprocessFile "Configuration\Templates\ACE_Default.sqf";
	call compile preprocessFile "Configuration\Templates\USMC_Blufor.sqf";
	call compile preprocessFile "Configuration\Templates\USMC_Blufor.sqf";
	call compile preprocessFile "Configuration\Templates\CHDZK_Resistance.sqf";
};

["AmmoboxInit", bluforArsenalBox] spawn BIS_fnc_arsenal;
["AmmoboxInit", opforArsenalBox] spawn BIS_fnc_arsenal;


// set up the markers
[] call SpawnMarkers;
diag_log "Exiting init var";