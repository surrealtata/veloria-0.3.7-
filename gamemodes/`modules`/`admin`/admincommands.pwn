#include <YSI\y_hooks>

new admin_duty[MAX_PLAYERS];
new Koristi_JetPack[MAX_PLAYERS];
new admin_vehicle[MAX_PLAYERS];
new Text3D:LabelStaffVehicle[ MAX_PLAYERS ];


//
hook OnPlayerConnect(playerid)
{
    admin_duty[playerid] = 0;
    Koristi_JetPack[playerid] = 0;
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    Koristi_JetPack[playerid] = 0;
	return 1;
}
hook OnPlayerDisconnect(playerid, reason)
{
    DestroyVehicle(admin_vehicle[playerid]);
	return 1;
}
//



YCMD:makestaff(playerid, params[], help)
{
    if (!Ulogovan[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Trenutno nisi ulogovan!");

    if (!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Nisi RCON Admin!");

    new player, level, string[256];
    if (sscanf(params, "ud", player, level))
        return SendClientMessage(playerid, -1, ""narandzasta"(koriscenje): "bijela"/makeadmin (ID/Name) (1-5)");

    if (!IsPlayerConnected(player)) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Pogresan ID!");

    if (level < 0 || level > 7)
        return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Ne moze ispod 0 ili iznad 7!");

    PlayerInfo[player][player_staff] = level;

    static name[MAX_PLAYER_NAME];

    GetPlayerName(player, name, sizeof(name));

    format(string, sizeof(string), ""tamno_zelena"(admcmd): "bijela"Setali ste igracu %s Admin level %d.", name, level);

	SendClientMessage(playerid, -1, string);

	new stris[500];
	format(stris,500,"{349E06}{FFFFFF}Postali ste "veloria"Admin "bijela"na serveru!\nPriliku Vam je pruzio Vlasnik "veloria"%s.\n"bijela"Vas Admin level je "veloria"%d", GetName(playerid), level);
	ShowPlayerDialog(player, d_pravljenjeadmina, DIALOG_STYLE_MSGBOX, ""veloria"Admin Pozicija:", stris, "OK", "");

    SacuvajKorisnike(player); // Promijenjeno iz 'playerid' u 'player'
    return 1;
}
YCMD:staffon(playerid, params[], help)
{
    if(!Ulogovan[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Trenutno nisi ulogovan!");

	if(PlayerInfo[playerid][player_staff] < 1) return SendClientMessage(playerid,-1,""crvena"(!): "bijela"Samo Administracija!");

    static string[128], name[MAX_PLAYER_NAME];

    if(!admin_duty[playerid])
    {
        admin_duty[playerid] = true;

        SetPlayerHealth(playerid, 99.0);

        SetPlayerArmour(playerid, 99.0);

        SetPlayerSkin(playerid, 294);

        GetPlayerName(playerid, name, sizeof(name));

		format(string, sizeof(string), ""crvena"(adminduty): "bijela"Administrator "crvena"%s "bijela"je na duznosti.", name);

        SendClientMessageToAll(-1, string);
    }
    else if(admin_duty[playerid])
    {
        admin_duty[playerid] = false;

        SetPlayerHealth(playerid, 99.0);

		GetPlayerName(playerid, name, sizeof(name));

        format(string, sizeof(string), ""crvena"(adminduty): "bijela"Administrator "crvena"%s "bijela"vise nije na duznosti.", name);

		SendClientMessageToAll(-1, string);
    }
    SacuvajKorisnike(playerid);
    return 1;
}
YCMD:clearchat(playerid, params[], help)
{
    static string[128], name[MAX_PLAYER_NAME];

    if(!Ulogovan[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Trenutno nisi ulogovan!");

    if(PlayerInfo[playerid][player_staff] < 1) return SendClientMessage(playerid,-1,""crvena"(!): "bijela"Samo Administracija!");

    if(!admin_duty[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Morate biti na Admin Duznosti!");

    for(new m; m < 40; m++)
    {
        SendClientMessageToAll(-1, "");
    }

    GetPlayerName(playerid, name, sizeof(name));

    format(string, sizeof(string), ""zuta"[CLEAR | CHAT] "bijela"Administrator %s je ocistio chat!", name);

    SendClientMessageToAll(-1, string);

	SacuvajKorisnike(playerid);
    return 1;
}
YCMD:jetpack(playerid, params[], help)
{
	if(PlayerInfo[playerid][player_staff] < 1) return SendClientMessage(playerid,-1,""crvena"(!): "bijela"Samo Administracija!");

    if(!admin_duty[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Morate biti na Admin Duznosti!");
	{
		new Float: Poz[3];

		if(Koristi_JetPack[playerid] == 0)
		{
		    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USEJETPACK);

		    SendClientMessage(playerid, -1, ""veloria"veloria > "bijela"Uzeli ste JetPack");

			Koristi_JetPack[playerid] = 1;
   		}
		else if(Koristi_JetPack[playerid] == 1)
		{
			GetPlayerPos(playerid, Poz[0], Poz[1], Poz[2]);

			SetPlayerPos(playerid, Poz[0], Poz[1], Poz[2]);

			SendClientMessage(playerid, -1, ""veloria"veloria > "bijela"JetPack koji ste stvorili je unisten");

			Koristi_JetPack[playerid] = 0;
  		}
  	}
	return 1;
}
YCMD:staffvehicle(playerid, params[],help)
{
	new Float:Pos[4];

	GetPlayerPos(playerid,Pos[0],Pos[1],Pos[2]);

	if(PlayerInfo[playerid][player_staff] < 1) return SendClientMessage(playerid,-1,""crvena"(!): "bijela"Samo Administracija!");

    if(!admin_duty[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Morate biti na Admin Duznosti!");
	{
		if(admin_vehicle[playerid] == -1)
		{
			new vozilo1;

			vozilo1 = CreateVehicle(562,Pos[0],Pos[1],Pos[2],Pos[3],random(1),random(1),500);

			LabelStaffVehicle[0] = Create3DTextLabel("{4286f4}[ STAFF VOZILO ]", 0xFFFFFFAA, 0, 0, 0, 25.0, 0, 0);

  			Attach3DTextLabelToVehicle(LabelStaffVehicle[0], vozilo1, 0.0, 0.0, 0.0);

			PutPlayerInVehicle(playerid,vozilo1,0);

			admin_vehicle[playerid] = vozilo1;

			SendClientMessage(playerid,-1,""crvena"(aveh): "bijela"Stvorili ste Admin Vozilo");

			new engine, lights, alarm, doors, bonnet, boot, objective;

			GetVehicleParamsEx(GetPlayerVehicleID(playerid), engine, lights, alarm, doors, bonnet, boot, objective);

			SetVehicleParamsEx(GetPlayerVehicleID(playerid), 1, lights, alarm, doors, bonnet, boot, objective);

		}

		else if(admin_vehicle[playerid] != -1)

		{

			DestroyVehicle(admin_vehicle[playerid]);

			Delete3DTextLabel(LabelStaffVehicle[playerid]);

			admin_vehicle[playerid] = -1;

			SendClientMessage(playerid,-1,""crvena"(aveh): "bijela"Unistili ste Admin Vozilo.");

		}
	}
	return 1;

}
YCMD:xgoto(playerid, params[], help)
{
	if(PlayerInfo[playerid][player_staff] < 1) return SendClientMessage(playerid,-1,""crvena"(!): "bijela"Samo Administracija!");

    if(!admin_duty[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Morate biti na Admin Duznosti!");
    
	new Float:x, Float:y, Float:z;
	
	new string[100];
	
	if (sscanf(params, "fff", x, y, z)) SendClientMessage(playerid, -1, ""narandzasta"(koriscenje): "bijela"xgoto <X Float> <Y Float> <Z Float>");

	else
	{
		if(IsPlayerInAnyVehicle(playerid))
		{
		    SetVehiclePos(GetPlayerVehicleID(playerid), x,y,z);
		}
		else
		{
		    SetPlayerPos(playerid, x, y, z);
		}
		format(string, sizeof(string), ""veloria"veloria "bijela"Postavili ste koordinate na %f, %f, %f", x, y, z);

		SendClientMessage(playerid, v_bijela, string);
	}
 	return Y_HOOKS_CONTINUE_RETURN_1;
}
YCMD:dajnovac( playerid, params[], help )
{
    if(PlayerInfo[playerid][player_staff] < 1) return SendClientMessage(playerid,-1,""crvena"(!): "bijela"Samo Administracija!");

    if(!admin_duty[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Morate biti na Admin Duznosti!");

	new id, kolicina;
	

	if( sscanf( params, "ui", id, kolicina ) ) {

		SendClientMessage(playerid, -1, ""narandzasta"(koriscenje): "bijela"/dajnovac [ playerid ][ novac ]");

		return 1;
	}
	if( id == INVALID_PLAYER_ID ) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Taj igrac nije na serveru.");

	DajIgracuNovac( id, kolicina );

	SendClientMessageEx( id, v_zuta, "Admin %s vam je dao %d$.",ImeIgraca( playerid ), kolicina );

	SendClientMessageEx( playerid, v_zuta, "Dali ste igracu: %s %d$.",ImeIgraca( id ), kolicina );

    new string1[ 128 ];

	format( string1, sizeof( string1 ), "Admin %s je dao %d$ igracu %s.", ImeIgraca( playerid ), kolicina, ImeIgraca( id ) );

	return 1;
}
