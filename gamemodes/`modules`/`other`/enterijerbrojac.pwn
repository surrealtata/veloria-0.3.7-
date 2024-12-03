#include <YSI\y_hooks>

// `enterijer - brojac` //

forward EnterijerBrojac(playerid);
public EnterijerBrojac(playerid)
{
	TogglePlayerControllable(playerid, 0);
	GameTextForPlayer(playerid, "UCITAVANJE OBJEKATA", 3000, 3);
	SetTimer("EnterijerBR2", 3000, false);
	return 1;
}
forward EnterijerBR2(playerid);
public EnterijerBR2(playerid)
{
	TogglePlayerControllable(playerid, 1);
	return 1;
}
