enableSaving [false, false];

if (hasInterface) then {btc_intro_done = [] spawn btc_fnc_intro;};

[] call compile preprocessFileLineNumbers "core\def\mission.sqf";
[] call compile preprocessFileLineNumbers "define_mod.sqf";

if (isServer) then {
    [] call compile preprocessFileLineNumbers "core\init_server.sqf";
};

[] call compile preprocessFileLineNumbers "core\init_common.sqf";

if (!isDedicated && hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_player.sqf";
};

if (!isDedicated && !hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_headless.sqf";
};


//MAP SAVE ACTION

waitUntil { player == player };
waitUntil { time > 10 };

//DATABASE SAVE
_mapAction     = ["Mission Action", "Mission Action", "", {}, {true}] call ace_interact_menu_fnc_createAction;
_mapSave         = ["Save Mission", "Save Mission", "", {[true,10] remoteExecCall ["grad_persistence_fnc_saveMission", 0, true]}, {true}] call ace_interact_menu_fnc_createAction;
[tfr_heartsminds_vir, 0, [], _mapAction] call ace_interact_menu_fnc_addActionToObject;
[tfr_heartsminds_vir, 0, ["Mission Action"], _mapSave] call ace_interact_menu_fnc_addActionToObject;