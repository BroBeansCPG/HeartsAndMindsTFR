
class CfgGradPersistence {
    missionTag = "tfr_heartsminds_vir";
    loadOnMissionStart = 1;
    missionWaitCondition = "true";
    playerWaitCondition = "true";

    saveUnits = 0;
    saveVehicles = 3;
    saveContainers = 3;
    saveStatics = 3;
    saveMarkers = 0;
    saveTasks = 0;
    saveTriggers = 0;

    savePlayerInventory = 0;
    savePlayerDamage = 0;
    savePlayerPosition = 0;
    savePlayerMoney = 0;

    saveTeamAccounts = 0;

    blacklist[] = 
    {"Land_Cargo20_grey_F",
    "Land_CargoBox_V1_F",
    "Land_ConcreteWall_01_l_gate_F"};

    /*class customVariables {
        class var1 {
            varName = "mcd_myVariable_test";
            varNamespace = "mission";
            public = 0;
        };
        class var2 {
            varName = "mcd_myPublicVariableOnAUnit_test";
            varNamespace = "unit";
            public = 1;
        };
    };*/
};