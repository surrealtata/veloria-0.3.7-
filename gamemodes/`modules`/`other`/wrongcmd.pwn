#include <YSI\y_hooks>


// ` wrong cmd ` //

public e_COMMAND_ERRORS:OnPlayerCommandReceived(playerid, cmdtext[], e_COMMAND_ERRORS:success)
{
    if(success != COMMAND_OK)
	{
        new string[256];

        format(string, sizeof(string), ""crvena"(!): "bijela"Komanda koju ste upisali (%s) trenutno ne postoji na serveru!", cmdtext);

        PlayerPlaySound(playerid, 1069, 0.0, 0.0, 0.0);

        SendClientMessage(playerid, -1, string);

		return COMMAND_OK;
	}
    return COMMAND_OK;
}
hook OnPlayerText(playerid, text[])
{
	if(!Ulogovan[playerid])
    {
        SendClientMessage(playerid, -1, ""crvena"(!): "bijela"Ne mozete pisati dok se ne spawnujete!");
        return 0;
    }
	return 1;
}
