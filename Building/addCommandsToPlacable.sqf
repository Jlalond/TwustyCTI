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
	if(isMultiplayer) then {
		[_building, side player, "Light"] remoteExec ["BuyVehicleCapability", 2, false];
	} else {
		[_building, side player, "Light"] spawn BuyVehicleCapability;
	};
};

if(_type == "Heavy Vehicle Factory") then {
	if(isMultiplayer) then {
		[_building, side player, "Heavy"] remoteExec ["BuyVehicleCapability", 2, false];
	} else {
		[_building, side player, "Heavy"] spawn BuyVehicleCapability;
	};
};

if(_type == "Aircraft Factory") then {
		if(isMultiplayer) then {
		[_building, side player, "Aircraft"] remoteExec ["BuyVehicleCapability", 2, false];
	} else {
		[_building, side player, "Aircraft"] spawn BuyVehicleCapability;
	};
};