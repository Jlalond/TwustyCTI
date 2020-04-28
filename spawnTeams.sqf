if(isMultiplayer && !isServer) exitWith {};

_bluforSpawnMrker = selectRandom spawnPoints;

spawnPoints deleteAt (spawnPoints find _bluforSpawnMrker);

_opForSpawnMrker = selectRandom spawnPoints;

diag_log format ["Trying to spawn blufor at: %1 and opfor at: %2", _bluforSpawnMrker, _opForSpawnMrker];
Blufor_CV = Blufor_CV_Type createVehicle markerPos _bluforSpawnMrker;
Opfor_CV = Opfor_CV_Type createVehicle markerPos _opForSpawnMrker;

diag_log format ["Set up blufor CV %1 at Pos %2, and Opfor CV %3 at Pos %4", Blufor_CV, position Blufor_CV, Opfor_CV, position Opfor_CV];
[Blufor_CV, west] call SetUpCommandVehicle;
[Opfor_CV, east] call SetUpCommandVehicle;

onPlayerConnected {
	waitUntil { not isNull player };
	if(side player == west) then {
		player setPos position Blufor_CV;
		publicVariable "Blufor_CV";
	} else {
		player setPos position Opfor_CV;
		publicVariable "Opfor_CV";
	};
};

// if we choose to allow AI
{
	if(side _x == west) then {
		_x setPos ([[[position Blufor_CV, 100]],[]] call BIS_fnc_randomPos);
		
	} else {
		_x setPos ([[[position Opfor_CV, 100]],[]] call BIS_fnc_randomPos);
	};
} forEach allUnits;