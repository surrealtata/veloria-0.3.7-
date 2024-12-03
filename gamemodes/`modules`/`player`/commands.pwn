#include <YSI\y_hooks>

// ` player - cmd ` //

YCMD:do(playerid, params[], help)
{
    new result[100], string[156];

	if(sscanf(params, "s[300]", result)) return SendClientMessage(playerid, -1, ""narandzasta"(koriscenje): "bijela"/do [Radnja]");

	format(string, sizeof(string), "%s (( %s )).", result, GetName(playerid));

	Proxara(20.0, playerid, string, v_prox, v_prox, v_prox, v_prox, v_prox);

	SetPlayerChatBubble(playerid, string, v_prox, 20.0, 5000);
	return 1;
}
YCMD:b(playerid, params[], help)
{
	new result[100], string[156];

	if(sscanf(params, "s[300]", result)) return SendClientMessage(playerid, -1, ""narandzasta"(koriscenje): "bijela"/b(occ) [tekst]");

	format(string, sizeof(string), ""bijela"OOC "veloria"(( "bijela"[%d]  %s kaze: %s "veloria"))", playerid, GetName(playerid), result);

	Proxara(20.0, playerid, string, v_prox, v_prox, v_prox, v_prox, v_prox);

	return 1;
}
YCMD:me(playerid, params[], help)
{
    new result[100], string[156];

	if(sscanf(params, "s[300]", result)) return SendClientMessage(playerid, -1, ""narandzasta"(koriscenje): "bijela"/me [Radnja]");

	format(string, sizeof(string), "%s %s.", GetName(playerid), result);

	Proxara(20.0, playerid, string, v_prox, v_prox, v_prox, v_prox, v_prox);

	SetPlayerChatBubble(playerid, string, v_prox, 20.0, 5000);

	return 1;
}
