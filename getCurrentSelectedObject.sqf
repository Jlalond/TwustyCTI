params ["_displayNum", "_ctrlNum"];

_display = findDisplay _displayNum;
_ctrl = _display displayCtrl _ctrlNum;

_index = lbCurSel _ctrl;
_data = _ctrl lbData _index;

diag_log format ["Getting display %1, with control %2, with index: %3", _display, _ctrl, _index];
_index;