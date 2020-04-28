params ["_side", "_cv"];

if (isMultiplayer && !isServer) exitWith {};

waitUntil {
	sleep 5;
	!alive _cv;
};

diag_log format ["CV for side %1 has died", _side];
if(_side == west) then {
	diag_log "Adding score to east";
	while {scoreSide east < scoreSide west + 1 } do {
		east addScoreSide 50;
	};
} else {
	diag_log "Adding score to west";
		while {scoreSide west < scoreSide east + 1 } do {
		west addScoreSide 50;
	};
};

diag_log format ["Ending game with side scores, EAST: %1, WEST: %2", scoreSide EAST, scoreSide WEST];
"SideScore" call BIS_fnc_endMissionServer;