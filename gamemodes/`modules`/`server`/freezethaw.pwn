#include <YSI\y_hooks>

// ` freeze/thaw `

#define INVALID_TIMER -1

new ZalediOdlediTimer[MAX_PLAYERS];

forward freezethaw(playerid);
public freezethaw(playerid)
{
    TogglePlayerControllable(playerid, true);
    ZalediOdlediTimer[playerid] = INVALID_TIMER;
    return 1;
}
hook OnPlayerSpawn(playerid)
{
	TogglePlayerControllable(playerid, false);
    ZalediOdlediTimer[playerid] = SetTimerEx("freezethaw", 5000, false, "i", playerid);
	return 1;
}

