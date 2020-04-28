call compile preprocessFile "functionTables.sqf";
call compile preprocessFile "initVar.sqf";

diag_log "Spawning EconomyTick";
[] spawn EconomyTick;
diag_log "Spawning Spawn Teams";
[] spawn SpawnTeams;
[] spawn CashDisplay;