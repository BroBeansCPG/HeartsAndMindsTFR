//autosave every 30 mins
"modules\grad-persistence\periodic_save.sqf" remoteExec ["execVM",2,false];

_addFort = execVM "modules\grad-fortifications\addLotsaFort.sqf";