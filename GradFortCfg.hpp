class CfgGradFortifications {
    canDemolishDefault = 1;
    buildTimeFactor = 2.5;
    demolitionTimeFactor = 2.5;
    packUpTimeFactor = 2.5;
    playerInventorySize = 30;
    vehicleInventorySizeFactor = 2;
	fortificationOwnerType = "Side";

    /*class Fortifications {
        class Land_BagFence_Long_F {
            boundingBoxSize = 1;
            canFloat = 1;
            canCollide = 1;
            size = 3;
            demolitionTime = 10;
        };

        class Land_HBarrier_5_F {
            boundingBoxSize = 0.8;
            surfaceNormal = 0;
            canDemolish = 0;
        };
    };*/

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