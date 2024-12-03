#include <YSI\y_hooks>


// ` CALLBACKS ` //

stock UserPath(playerid)
{
    new string[128],playername[MAX_PLAYER_NAME];
    GetPlayerName(playerid,playername,sizeof(playername));
    format(string,sizeof(string),Path,playername);
    return string;
}

//

stock udb_hash(buf[])
{
    new length=strlen(buf);
    new s1 = 1;
    new s2 = 0;
    new n;
    for (n=0; n<length; n++)
    {
       s1 = (s1 + buf[n]) % 65521;
       s2 = (s2 + s1)     % 65521;
    }
    return (s2 << 16) + s1;
}

stock GetName(playerid)
{
	new Ime_Igraca[MAX_PLAYER_NAME];
	GetPlayerName(playerid, Ime_Igraca, MAX_PLAYER_NAME);
	return Ime_Igraca;
}
stock SCMF(playerid, colour, format[], va_args<>)
{
    new out[384];
    va_format(out, sizeof (out), format, va_start<3>);
    SendClientMessage(playerid, colour, out);
    return 1;
}
stock DajIgracuNovac( playerid, novac )
{
	PlayerInfo[ playerid ][ player_money ] += novac;
	ResetPlayerMoney( playerid );
	GivePlayerMoney( playerid, PlayerInfo[ playerid  ][ player_money ] );
	SacuvajKorisnike( playerid );
	return PlayerInfo[ playerid ][ player_money ];
}
stock SendClientMessageEx(playerid, color, const str[], {Float,_}:...) {
	static
	    args,
	    start,
	    end,
	    string[144]
	;
	#emit LOAD.S.pri 8
	#emit STOR.pri args

	if(args > 12)
	{
		#emit ADDR.pri str
		#emit STOR.pri start

	    for (end = start + (args - 12); end > start; end -= 4)
		{
	        #emit LREF.pri end
	        #emit PUSH.pri
		}
		#emit PUSH.S str
		#emit PUSH.C 144
		#emit PUSH.C string
		#emit PUSH.C args
		#emit SYSREQ.C format

		SendClientMessage(playerid, color, string);

		#emit LCTRL 5
		#emit SCTRL 4
		#emit RETN
	}
	return SendClientMessage(playerid, color, str);
}
stock ImeIgraca(playerid)
{
    new ime[MAX_PLAYER_NAME];
    GetPlayerName(playerid, ime, sizeof(ime));
    return ime;
}
