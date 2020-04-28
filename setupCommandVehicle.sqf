params ["_veh", "_side"];
diag_log format ["Setting up command vehicle: %1, for side: %2", _veh, _side];
[_veh] call CanBuild;
[_side, _veh] spawn GameOverHandler;