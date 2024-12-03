#include <YSI\y_hooks>

forward AntiSpawnkill(playerid);
public AntiSpawnkill(playerid)
{
	SetPlayerHealth(playerid, 99.0);
	
	SendClientMessage(playerid, -1, ""veloria"veloria: "bijela"Isteklo je vreme zastite od SK-a .");
	return 1;
}

hook OnPlayerSpawn(playerid)
{
	SetPlayerHealth(playerid, 99999);
	
	SetTimer("HPdaj",5000,0);
	
	SendClientMessage(playerid, -1,""veloria"veloria: "bijela"Imas 5 sekundi Anti-Spawn Zastite!");
	return 1;
}
forward HPdaj(playerid);
public HPdaj(playerid)
{
	SetPlayerHealth(playerid, 100);
	
	SendClientMessage(playerid, -1,""veloria"veloria: "bijela"Anti-Spawn Kill Zastita Prosla!");
}
