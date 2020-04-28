_bluforSpawnMrker = selectRandom SpawnMarkers;

SpawnMarkers = SpawnMarkers - _bluforSpawnMrker;

_opForSpawnMrker = selectRandom SpawnMarkers;

Blufor_CV = markerPos _bluforSpawnMrker createVehicle Blufor_CV_Type;
Opfor_CV = markerPos _opForSpawnMrker createVehicle Opfor_CV_Type;

onPlayerConnected {
	waitUntil { not isNull player };
	if(side player == west) then {
		player setPos position Blufor_CV;
	} else {
		player setPos position Opfor_CV;
	}
};