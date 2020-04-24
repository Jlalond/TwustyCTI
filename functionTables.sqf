GarrisonMarker = compile preprocessFile "Towns\spawnGarrison.sqf";
GetSideConfigs = compile preprocessFile "Side-Helpers\getGarrisonConfigs.sqf";
TransferOwnership = compile preprocessFile "Towns\transferOwnership.sqf";
EconomyTick = compile preprocessFile "AI-Helpers\economyTick.sqf";
GetBuildingType = compile preprocessFile "Building\getBuildingName.sqf";
PrePlace = compile preprocessFile "Building\prePlace.sqf";
CanBuild = compile preprocessFile "Building\canBuild.sqf";
SetUpCommandVehicle = compile preprocessFile "setUpCommandVehicle.sqf";
GameOverHandler = compile preprocessFile "Command\gameOverHandler.sqf";
AddBehaviorToPlacable = compile preprocessFile "Building\addCommandsToPlacable.sqf";
SpawnMarkers = compile preprocessFile "spawnMarkers.sqf";
AddArsenalWhenNearby = compile preprocessFile "Building\addArsenalCapability.sqf";
OpenArsenal = compile preprocessFile "openArsenalForSide.sqf";
BuyVehicle = compile preprocessFile "Menus\buyVehicleMenu.sqf";
GetVehicleConfigs = compile preprocessFile "Configuration\getVehicleConfigs.sqf";
SpawnPurchasedVehicle = compile preprocessFile "Menus\spawnVehicle.sqf";
GetCurrentSelectedObject = compile preprocessFile "getCurrentSelectedObject.sqf";

diag_log "Function tabled completed";