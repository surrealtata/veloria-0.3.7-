#include <YSI\y_hooks>


// ` S P A W N - B U T T O N ` //
hook OnPlayerRequestClass(playerid, classid)
{
    SetSpawnInfo(playerid, 0, 0, 1958.3783, 1343.1572, 15.3746, 269.15, 0, 0, 0, 0, 0, 0);
	SpawnPlayer(playerid);
	return 1;
}

