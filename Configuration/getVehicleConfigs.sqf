params ["_type"]; // light, heavy, aircraft
diag_log format ["Getting vehicle config for type %1, for player %2", _type, player];
_toReturn = objNull;
if(_type == "Light") then {
	if(side player == west) then {
		_toReturn = bluforLightVehicles;
	} else {
		_toReturn = opforLightVehicles;
	};
};

if(_type == "Heavy") then {
	if(side player == west) then {
		_toReturn = bluforHeavyVehicles;
	} else {
		_toReturn = opforHeavyVehicles;
	};
};

if(_type == "Aircraft") then {
	if(side player == west) then {
		_toReturn = bluforAircraft;
	} else {
		_toReturn = opforAircraft;
	};
};

diag_log format ["Returning Vehicle config for %1 : %2", _type, _toReturn];
_toReturn;