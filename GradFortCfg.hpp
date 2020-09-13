class CfgGradFortifications {
    canDemolishDefault = 1;
    buildTimeFactor = 6;
    demolitionTimeFactor = 6;
    packUpTimeFactor = 9;
    playerInventorySize = 30;
    vehicleInventorySizeFactor = 2;
	fortificationOwnerType = "Side";

    class Fortifications {
        class CamoNet_BLUFOR_big_F {
            boundingBoxSize = 1;
            size = 10;
        };
        class CamoNet_BLUFOR_open_F {
            size = 10;
        };
        class CamoNet_BLUFOR_F {
            size = 10;
        };
    };

    class Vehicles {
        class rhsusf_M977A4_BKIT_usarmy_wd 
        {
            isStorage = 1;
            vehicleInventorySize = 300;
        };
        class PSZ_PL_WDL20_Star_1466_Command
        {
            isStorage = 1;
            vehicleInventorySize = 300;
        };
        class Land_Cargo20_grey_F
        {
            isStorage = 1;
            vehicleInventorySize = 1000000;
        };
    };
};