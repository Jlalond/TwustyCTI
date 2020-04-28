private ["_cash"];
disableSerialization;
while{true} do {
	// this is copied from anti-stasi, I really don't understand it but w/e this is a passion project
	_layer = ["estadisticas"] call bis_fnc_rscLayer;
	_layer cutRsc ["H8erHUD","PLAIN",0,false];
	waitUntil {!isNull (uiNameSpace getVariable "H8erHUD")};
	if(isMultiplayer) then {
		if(side player == west) then {
			_cash = server getVariable["BluforCash", 0];
		} else {
			_cash = server getVariable["OpforCash", 0];
		};
	} else {
		_cash = 1337;
	};
	_text = parseText format ["<t size='0.55'> Cash: %1, Current Research: %2", _cash, "None"];
	_display = uiNameSpace getVariable "H8erHUD";
	_setText = _display displayCtrl 1001;
	_setText ctrlSetBackgroundColor [0,0,0,0];
	_setText ctrlSetStructuredText _text;
	_setText ctrlCommit 0;
	sleep 3;
};