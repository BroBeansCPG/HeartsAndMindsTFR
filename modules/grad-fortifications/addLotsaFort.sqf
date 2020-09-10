_objectsArr = 

[
    "Land_BagFence_Long_F",
    "Land_BagFence_Round_F",
    "Land_BagFence_Corner_F",
    "Land_SandbagBarricade_01_half_F",
    "Land_HBarrier_5_F",
    "Land_HBarrier_Big_F",
    "Land_HBarrierWall6_F",
    "Land_HBarrier_1_F",
    "Land_HBarrierTower_F",
    "vhf30108Item",
    "CamoNet_BLUFOR_big_F",
    "CamoNet_BLUFOR_open_F",
    "CamoNet_BLUFOR_F",
    "Land_BagBunker_01_small_green_F",
    "Land_HBarrier_01_tower_green_F",
    "Land_CncBarrier_F",
    "Land_CncBarrierMedium_F",
    "Land_CncBarrierMedium4_F"
];

{
[fort_crate, _x, 100] call grad_fortifications_fnc_addFort 
} forEach _objectsArr;