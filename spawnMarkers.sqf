if(isMultiplayer && !isServer) exitWith {};

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
	[_x, resistance, resistanceGarrisonConfig] call GarrisonMarker; 
} forEach allTowns;