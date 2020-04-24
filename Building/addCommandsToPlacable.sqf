params ["_building", "_type"];
diag_log format ["Attaching behavior to building %1, of type :%2", _building, _type];
if(_type == "Barracks") then {
	if(isMultiplayer) then {
		[_building, side player] remoteExec ["AddArsenalWhenNearby", 2, false];
	} else {
		[_building, side player] spawn AddArsenalWhenNearby;
	};
};

if(_type == "Light Vehicle Factory") then {
	if(side player == west) then {
		
	};
};

if(_type == "Heavy Vehicle Factory") then {
	if(side player == west) then {

	};
};

if(_type == "Aircraft Factory") then {
	if(side player == west) then {

	};
};