params ["_type"];

createDialog "vehicleDialog";
sleep 2;
_types = [_type] call GetVehicleConfigs;
diag_log format ["Got types for vehicle purchase: %1", _types];
_ctrl = findDisplay 100;
_priceControl = _ctrl displayCtrl 101;
{
	// vehicles are a tuple of name, price
	lbAdd[100, format ["%1", (_x select 0)]];
	lbAdd[101, (_x select 1)];
} forEach _types;

diag_log format ["Used vehicle menu with control: %1", _ctrl];
uiNamespace setVariable ["currentType", _type];
waitUntil {!isNull (findDisplay 100);};