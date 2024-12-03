#if defined VeloriaMain

				Veloria Online Gaming Community
   						Start - 11/7/2024
       		 				  surreal

v0.0.1 :
			   `server`
			(*) path.pwn
			(*) dialogs.pwn
			(*) enums.pwn
			(*) callbacks.pwn
			(*) colors.pwn
			(*) savingaccount.pwn
				`other`
			(*) wrongcmd.pwn
			(*) spawnbutton.pwn
				`player`
			(*) anticbug.pwn
v0.0.2
				`player`
			(*) Prilikom AntiCBug-a dodan zvuk
			(*) bunnyhop.pwn
			(*) Prilikom BunnyHop-a dodan zvuk
			(*) pickups.pwn
			(*) textlabels.pwn
			(*) commands.pwn
				`other`
			(*) spawn.pwn
			(*) textdraws.pwn
			(*) ubaceni - spojeni TextDrawovi(osim lokacije)
			(*) proxdetector.pwn
			    `server`
			(*) skzastita.pwn
v0.0.3
				`admin`
			(*) admincommands.pwn
			    `server`
            (*) freezethaw.pwn
            (*) veloriamape.pwn
			(*) uiuenterier.pwn
			(*) banka.pwn
                `other`
			(*) lokacijatextdraw.pwn
			(*) enterijerbrojac.pwn

#endif

// ` I N C L U D E S ` //
#include <a_samp>
#include <YSI_Storage\y_ini>
#include <YSI_Visual\y_commands>
#include <YSI_Coding\y_timers>
#include <sscanf2>
#include <streamer>
#include <a_actor>
// ` N E W ` //
new Ulogovan[MAX_PLAYERS];
new	IgracKojimSaljes[MAX_PLAYERS];


// ` M O D U L E S ` //
#include "`modules`/`server`/paths.pwn"
#include "`modules`/`server`/dialogs.pwn"
#include "`modules`/`server`/enums.pwn"
#include "`modules`/`server`/callbacks.pwn"
#include "`modules`/`server`/colors.pwn"
#include "`modules`/`server`/savingaccount.pwn"
#include "`modules`/`other`/wrongcmd.pwn"
#include "`modules`/`other`/spawnbutton.pwn"
#include "`modules`/`player`/anticbug.pwn"
#include "`modules`/`player`/bunnyhop.pwn"
#include "`modules`/`other`/spawn.pwn"
#include "`modules`/`server`/textlabels.pwn"
#include "`modules`/`server`/pickups.pwn"
#include "`modules`/`other`/textdraws.pwn"
#include "`modules`/`other`/proxdetector.pwn"
#include "`modules`/`player`/commands.pwn"
#include "`modules`/`server`/skzastita.pwn"
#include "`modules`/`admin`/admincommands.pwn"
#include "`modules`/`server`/freezethaw.pwn"
#include "`modules`/`other`/lokacijatextdraw.pwn"
#include "`modules`/`server`/veloriamape.pwn"
#include "`modules`/`other`/enterijerbrojac.pwn"
#include "`modules`/`server`/uiuenterier.pwn"
#include "`modules`/`server`/banka.pwn"

// ` M A I N ` //
main()
{
	print("\n | | | | | | | | | | | | | | | | | |");
	print(" v0.0.3 - loading script");
	print(" v0.0.3 - script loaded");
	print(" v0.0.3 - script maker - surreal");
	print("| | | | | | | | | | | | | | | | | | | \n");
}


// ` D E F I N E ` //
#define VERZIJA_MODA 						"v0.0.3"
#define JEZIK_MODA 							"Balkanian"

// ` O T H E R ` //
public OnGameModeInit()
{
    SendRconCommand( "language "JEZIK_MODA"" );
	SetGameModeText( ""VERZIJA_MODA"" );
	//
	DisableInteriorEnterExits();
	SetNameTagDrawDistance(10.0);
	LimitGlobalChatRadius(20.0);
	//
	Ucitaj_Pickups();
	Ucitaj_TextLabel();
	CreateGTextDraws();
	KreirajObjekte();
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public OnPlayerConnect(playerid)
{
    TogglePlayerSpectating(playerid, 0);
    //
    if(fexist(UserPath(playerid)))
    {
        INI_ParseFile(UserPath(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
        ShowPlayerDialog(playerid, d_login, DIALOG_STYLE_INPUT,""veloria"Login",""bijela"Upisi te sifru za "zelena"nastavak","Login","Exit");
    }
    else
    {
        ShowPlayerDialog(playerid, d_register, DIALOG_STYLE_INPUT,""veloria"Registracija",""bijela"Upisi te sifru za "zelena"nastavak","Register","Exit");
    }
    //
    Ulogovan[playerid] = 0;
    ObrisiObjekte(playerid);
    IgracKojimSaljes[playerid] = -1;
    return 1;
}
public OnPlayerDisconnect(playerid, reason)
{
    SacuvajKorisnike(playerid);
	return 1;
}

public OnPlayerSpawn(playerid)
{
    SetPlayerColor(playerid, v_bijela);
    SetPlayerScore(playerid, PlayerInfo[playerid][player_level]);
    SetPlayerSkin(playerid, PlayerInfo[playerid][player_skin]);
    Ulogovan[playerid] = 1;
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
    {
        case d_register:
        {
            if (!response) return Kick(playerid);
            if(response)
            {
                if(!strlen(inputtext)) return ShowPlayerDialog(playerid, d_register, DIALOG_STYLE_INPUT, ""veloria"Registracija",""bijela"Ukucali ste "crvena"pogresnu "bijela"lozinku","Register","Exit");
                new INI:File = INI_Open(UserPath(playerid));
                INI_SetTag(File,"data");
                INI_WriteInt(File,"Password",udb_hash(inputtext));
                INI_WriteInt(File,"Money",0);
                INI_Close(File);
                SetCameraBehindPlayer(playerid);
            }
        }
        case d_login:
        {
            if ( !response ) return Kick ( playerid );
            if( response )
            {
                if(udb_hash(inputtext) == PlayerInfo[playerid][player_password])
                {
                    INI_ParseFile(UserPath(playerid), "LoadUser_%s", .bExtra = true, .extra = playerid);
                    GivePlayerMoney(playerid, PlayerInfo[playerid][player_money]);
				}
                else
                {
                    ShowPlayerDialog(playerid, d_login, DIALOG_STYLE_INPUT,""veloria"Login",""bijela"Ukucali ste "crvena"pogresnu "bijela"sifru","Login","Exit");
                }
                return 1;
            }
        }
	}
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
