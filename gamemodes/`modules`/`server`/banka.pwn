#include <YSI\y_hooks>

YCMD:otvoriracun(playerid, params[], help)
{
    if(PlayerInfo[playerid][player_accountbank] == 1) return SendClientMessage(playerid,-1,""crvena"(!): "bijela"Vec imas otvoren bankovni racun!");

	if(!IsPlayerInRangeOfPoint(playerid, 5.0,-1753.5330,780.8963,145.1328)) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Niste u banci!");

	if (!Ulogovan[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Trenutno nisi ulogovan!");

	PlayerInfo[ playerid ][ player_accountbank ] = true;

	SacuvajKorisnike ( playerid );

	SendClientMessage( playerid, -1, ""svijetlo_plava"banka > "bijela"Uspesno ste otvorili racun u banci." );

	return true;
}

YCMD:banka(playerid, params[], help)
{
    if (!Ulogovan[playerid]) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Trenutno nisi ulogovan!");

	if(!IsPlayerInRangeOfPoint(playerid, 3.0, -1753.3772,785.7462,145.1328)) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Niste u banci!");

	if(PlayerInfo[playerid][player_accountbank] == 0) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Nemas otvoren racun ne mozes koristiti ovu opciju!");

	ShowPlayerDialog(playerid, dialog_banka, DIALOG_STYLE_LIST,""bijela"Banka",""veloria"[1] "bijela"Ostavi Novac\n"veloria"[2] "bijela"Podigni Novac\n"veloria"[3] "bijela"Transfer Novac\n"veloria"[4] "bijela"Stanje na Bankovnom Racunu",""zelena"Odaberi",""crvena"Izadji");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == dialog_banka)
    {
	    if(!response) return 1;

		if(response)

		{
		    if(listitem == 0)

		    {

			    ShowPlayerDialog(playerid, d_ostavljanjenovac, DIALOG_STYLE_INPUT,""veloria"Ostavljanje novca",""bijela"Unesi koliko zelis novca da ostavis",""zelena"Ostavi",""crvena"Izadji");

		    }

		    if(listitem == 1)

		    {

			    ShowPlayerDialog(playerid,d_podizanjenovac , DIALOG_STYLE_INPUT,""veloria"Podizanje novca",""bijela"Unesi koliko zelis novca da podignes",""zelena"Podigni",""crvena"Izadji");

		    }

		    if(listitem == 2)

		    {

			    ShowPlayerDialog(playerid,d_transfernovac , DIALOG_STYLE_INPUT,""veloria"Transfer novca",""bijela"Unesi ID igraca kojim zelis da posaljes novac",""zelena"Dalje",""crvena"Izadji");

		    }

		    if(listitem == 3)

		    {

				new string[128];

				format(string,sizeof(string),""bijela"Imate "crvena"%d$ "bijela"na vasem bankovnom racunu!",PlayerInfo[playerid][player_bankmoney]);

				ShowPlayerDialog(playerid, d_balancenovac, DIALOG_STYLE_MSGBOX, ""veloria"Stanje Bankovnog Racuna", string, ""zelena"Ok", "");

		    }

		}

    }
    
    ///////////////////
    if(dialogid == d_transfernovac)
    {
	    if(!response) return 1;

		if(response)

		{

		    new id;

		    id = strval(inputtext);



			if(!IsPlayerConnected(id))

			{

				ShowPlayerDialog(playerid,d_transfernovac,DIALOG_STYLE_INPUT,""veloria"Transfer novca",""bijela"Unesi ID igraca kojim zelis da posaljes novac",""zelena"Dalje",""crvena"Izadji");



				SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Taj igrac nije na serveru!");



				return 1;

			}

			if(id < 0) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Ne mozete ici ispod 1!");

			if(PlayerInfo[id][player_accountbank] == 0)

			{

				SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Igrac nema otvoren bankovni racun!");

				return 1;

			}

			if(id == playerid) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Ne mozete sebi slati novac!");

			new ime[MAX_PLAYER_NAME];

			IgracKojimSaljes[playerid] = id;

			GetPlayerName(IgracKojimSaljes[playerid], ime, sizeof(ime));

			new string[128];

			format(string,sizeof(string),""bijela"Unesi kolicinu novca koju zelis da posaljes igracu %s.",ime);

			ShowPlayerDialog(playerid,d_spremnoslanje,DIALOG_STYLE_INPUT,""veloria"Transfer novca",string,""zelena"Posalji",""crvena"Izadji");
	    }
    }
    //////////////////////////////////
    if(dialogid == d_spremnoslanje)
    {
	    if(!response) return 1;

		if(response)

		{

		    new kolicina;

		    kolicina = strval(inputtext);

		    if(!IsPlayerConnected(IgracKojimSaljes[playerid]))

			{

		    	ShowPlayerDialog(playerid,d_transfernovac,DIALOG_STYLE_INPUT,""veloria"Transfer novca",""bijela"Unesi ID igraca kojim zelis da posaljes novac",""zelena"Dalje",""crvena"Izadji");

				SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Taj igrac nije na serveru!");

				return 1;

		    }
		    if(kolicina < 1) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Ne mozete ici ispod 1!");

			if(PlayerInfo[playerid][player_bankmoney] < kolicina) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Nemas toliko para na banci!");

			new imes[MAX_PLAYER_NAME];

			new ime[MAX_PLAYER_NAME];

			GetPlayerName(playerid, imes, sizeof(imes));

			GetPlayerName(IgracKojimSaljes[playerid], ime, sizeof(ime));

			PlayerInfo[playerid][player_bankmoney] -= kolicina;

			PlayerInfo[IgracKojimSaljes[playerid]][player_bankmoney] += kolicina;

			SCMF(playerid,-1,""veloria"Poslao si igracu %s novca %d$!",ime,kolicina);

			SCMF(IgracKojimSaljes[playerid],-1,""veloria"%s vam je poslao %d$ na vas bankovni racun!",imes,kolicina);

			IgracKojimSaljes[playerid] = -1;
	    }
	    
    }
    ////////////////////////////////////////
	if(dialogid == d_podizanjenovac)
    {
	    if(!response) return 1;

		if(response)

		{

		    new kolicina;

			new string[ 128 ];

			kolicina = strval(inputtext);

			format( string, sizeof( string ), ""svijetlo_plava"banka > "bijela"Nemas %d$ novca u banci,ukupno imas %d$!",kolicina, PlayerInfo[ playerid ][ player_bankmoney ]);

			if(kolicina < 1) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Ne mozete ici ispod 1!");

			if(PlayerInfo[playerid][player_bankmoney] < kolicina) return SendClientMessage( playerid, -1, string );

			PlayerInfo[playerid][player_bankmoney] -= kolicina;

			DajIgracuNovac(playerid, kolicina);

			format( string, sizeof( string ), ""svijetlo_plava"banka > "bijela"Podigli ste $%d s vaseg racuna Ukupno: $%d ", kolicina, PlayerInfo[ playerid ][ player_bankmoney ] );

			SendClientMessage( playerid, -1, string );
		}
    }
    ///////////////////////////////////////
	if(dialogid == d_ostavljanjenovac)
    {
	    if(!response) return 1;

		if(response)

		{

		    new kolicina;

		    new string[ 128 ];

		    kolicina = strval(inputtext);

		    format( string, sizeof( string ), ""svijetlo_plava"banka > "bijela"Nemas %d$,u dzepu imas %d$!",kolicina, PlayerInfo[ playerid ][ player_money ]);

		    if(kolicina < 1) return SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Ne mozete ici ispod 1!");

		    if(PlayerInfo[playerid][player_money] < kolicina) return SendClientMessage( playerid, -1, string );

		    PlayerInfo[playerid][player_bankmoney] += kolicina;

		    DajIgracuNovac(playerid, -kolicina);

		    format( string, sizeof( string ), ""svijetlo_plava"banka > "bijela"Ostavio si u banku %d$,ukupno imas %d$!",kolicina, PlayerInfo[ playerid ][ player_bankmoney ]);

			SendClientMessage( playerid, -1, string );

		}
    }
    
    return 1;
}

