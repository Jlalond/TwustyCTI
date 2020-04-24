params["_entry"];

_type = uiNamespace getVariable ["currentType", objNull];
diag_log format ["Attempting to spawn vehicle %1, of type: %2", _entry, _type];
_types = [_type] call GetVehicleConfigs;

_vehCost = 0;
{
	if((_x select 0) == _entry) exitWith {
		_vehCost = _x select 1;
	};
} forEach _types;


_canBuy = true;
if(isMultiplayer) then {
	_cash = 0;
	if(side player == west) then {
		_cash = server getVariable["BluforCash", 0];
	} else {
		_cash = server getVariable["OpforCash", 0];
	};
	
	if(_cash < _vehCost) then {
		_canBuy = false;
	};
};

if(!_canBuy) exitWith {hint "Get Lost! You can't afford that"};

_pos = objNull;
_min = 0;
for "_i" from 0 to 20 do {
	_pos = player findEmptyPosition [_min, 500, _entry];
	if(!(_pos isFlatEmpty[1, -1, 0.1, 1, -1, false, objNull] isEqualTo [])) exitWith {};
	_min = _min + 15;
};

_entry createVehicle _pos;