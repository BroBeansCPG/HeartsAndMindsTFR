
/* ----------------------------------------------------------------------------
Function: btc_fnc_eh_veh_killed

Description:
    Create marker wreck and change reputation on vehicle destruction.

Parameters:
    _vehicle - Vehicle object. [Object]

Returns:

Examples:
    (begin example)
        [btc_veh_12] call btc_fnc_eh_veh_killed;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_vehicle", objNull, [objNull]]
];

private _marker = createMarker [format ["m_%1", _vehicle], getPos _vehicle];
_marker setMarkerType "mil_box";
_marker setMarkerColor "ColorRed";
[_marker, "STR_BTC_HAM_O_EH_VEHKILLED_MRK", getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "displayName")] remoteExecCall ["btc_fnc_set_markerTextLocal", [0, -2] select isDedicated, _marker]; // %1 wreck

_vehicle setVariable ["marker", _marker];

_startPos = [_vehicle, 1000, 1500, 5, 0, 0.5, 0] call BIS_fnc_findSafePos;
_startObj = "Land_PencilBlue_F" createVehicle _startPos; 
_QRF = [_startObj,_vehicle,1] call btc_fnc_mil_send;

if (isServer) then {
    btc_rep_malus_veh_killed call btc_fnc_rep_change;
} else {
    btc_rep_malus_veh_killed remoteExecCall ["btc_fnc_rep_change", 2];
};

deleteVehicle _startObj;