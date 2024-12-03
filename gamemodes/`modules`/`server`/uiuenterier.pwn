#include <YSI\y_hooks>

// `uiuenterijer` //

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_WALK)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, 1454.8263,-1010.6777,26.9590) && !IsPlayerInAnyVehicle(playerid)) //banka ulaz
		{
			SetPlayerPos(playerid, -1737.4226,803.0189,145.1328);
			SetPlayerFacingAngle(playerid, 93.6342);
	 	    SetPlayerInterior(playerid, 50);
	 	    SetPlayerVirtualWorld(playerid, 654);
	 	    EnterijerBrojac(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1737.4226,803.0189,145.1328) && !IsPlayerInAnyVehicle(playerid)) //banka izlaz
		{
			SetPlayerPos(playerid, 1454.8263,-1010.6777,26.9590);
			SetPlayerFacingAngle(playerid, 182.4749);
	 	    SetPlayerInterior(playerid, 0);
	 	    SetPlayerVirtualWorld(playerid, 0);
	 	    EnterijerBrojac(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, 1479.3579,-1750.9418,14.3044) && !IsPlayerInAnyVehicle(playerid)) //banka ulaz
		{
			SetPlayerPos(playerid, -2128.7031,-175.5791,-79.0954);
			SetPlayerFacingAngle(playerid, 182.4749);
	 	    SetPlayerInterior(playerid, 0);
	 	    SetPlayerVirtualWorld(playerid, 0);
	 	    EnterijerBrojac(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -2128.7031,-175.5791,-79.0954) && !IsPlayerInAnyVehicle(playerid)) //banka izlaz
		{
			SetPlayerPos(playerid, 1479.3579,-1750.9418,14.3044);
			SetPlayerFacingAngle(playerid, 182.4749);
	 	    SetPlayerInterior(playerid, 0);
	 	    SetPlayerVirtualWorld(playerid, 0);
	 	    EnterijerBrojac(playerid);
		}
	}
	return 1;
}
