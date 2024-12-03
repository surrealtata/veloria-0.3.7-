#include <YSI\y_hooks>


new BunnyHop[MAX_PLAYERS];

hook OnPlayerConnect(playerid)
{
	BunnyHop[playerid] = 0;
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if((newkeys & KEY_JUMP) && !IsPlayerInAnyVehicle(playerid))
    {
        BunnyHop[playerid] ++;
        SetTimerEx("NijeDzampo", 10000, false, "i", playerid);

        if(BunnyHop[playerid] == 2)
        {
            PlayerPlaySound(playerid, 1052, 0.0, 0.0, 10.0);
            ApplyAnimation(playerid, "PED", "BIKE_fall_off", 4.1, 0, 1, 1, 1, 0, 1);
            new string[160], pName[MAX_PLAYER_NAME];
			GetPlayerName(playerid,pName,MAX_PLAYER_NAME);
  		  	format(string, sizeof(string), "{FF0000}(!): {FFFFFF}%s, trcali ste brzo i {FF0000}uganuli nogu", pName);
            SendClientMessage(playerid, v_crvena, string);
			GameTextForPlayer(playerid, "~r~Bunny Hop = Zabranjen!", 1000, 3);
			SetTimerEx("Dzampo", 3000, false, "i", playerid);
        }
    }
	return 1;
}

forward Dzampo(playerid);
public Dzampo(playerid)
{
    BunnyHop[playerid] = 0;
    ClearAnimations(playerid);
    return 1;
}
forward NijeDzampo(playerid);
public NijeDzampo(playerid)
{
    BunnyHop[playerid] = 0;
    return 1;
}
