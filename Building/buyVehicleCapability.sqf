params ["_building", "_side", "_type"];

if(isMultiplayer && !isServer) exitWith {};

_playersWithArsenal = [];
while{true} do {
	{
		if(side _x == _side && _building distance _x < 50 && _playersWithArsenal find _x == -1) then {
			if(_type == "Light") then {
				_action = [format ["Buy %1 Vehicle", _type],format ["Buy %1 Vehicle", _type],"",
					{["Light"] call BuyVehicle;},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
			};
			if(_type == "Heavy") then {
				_action = [format ["Buy %1 Vehicle", _type],format ["Buy %1 Vehicle", _type],"",
					{["Heavy"] call BuyVehicle;},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
			};
			if(_type == "Aircraft") then {
				_action = [format ["Buy %1 Vehicle", _type],format ["Buy %1 Vehicle", _type],"",
					{["Aircraft"] call BuyVehicle;},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
			};

			[_x, 1, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
			_playersWithArsenal pushBackUnique _x;
		};
	} forEach allPlayers;

	_playersToRemove = [];
	{
		if(_building distance _x > 50) then {
			_playersToRemove pushBackUnique _x;
			[_x,1,["ACE_MainActions",format ["Buy %1 Vehicle", _type]]] call ace_interact_menu_fnc_removeActionFromObject;
		}
	} forEach _playersWithArsenal;

	_playersWithArsenal = _playersWithArsenal - _playersToRemove;
	sleep 4;
};