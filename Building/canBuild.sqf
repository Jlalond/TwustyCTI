params ["_veh"];

_action = ["Open Build Menu","Open Build Menu","",{createDialog "commanderDialog";},{true},{},[], [0,0,0], 100] call ace_interact_menu_fnc_createAction;
[_veh, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;