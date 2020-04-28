if(isMultiplayer && !isServer) exitWith {};
diag_log "Creating spawn points";
spawnPoints = [];
{
	if(_x find "spawn" != -1) then {spawnPoints pushBack _x;};
} foreach allMapMarkers;

allTowns = [];
{
	if(_x find "town" != -1) then {
		allTowns pushBack _x;
	};
} forEach allMapMarkers;

{
	[_x, resistance, resistanceGarrisonConfig] spawn GarrisonMarker; 
} forEach allTowns;
diag_log format ["Spawn points created, with all spawnPoints %1, and all towns %2", spawnPoints, allTowns];