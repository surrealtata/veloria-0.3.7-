#include <YSI\y_hooks>

// `s a v e - p l a y e r` //

stock SacuvajKorisnike(playerid)
{
    if (Ulogovan[playerid])
    {
        new INI:File = INI_Open(UserPath(playerid));
        INI_SetTag(File, "data");
        INI_WriteInt(File, "Money", GetPlayerMoney(playerid));
        INI_WriteInt(File, "Staff", PlayerInfo[playerid][player_staff]);
        INI_WriteInt(File,"Level", PlayerInfo[playerid][player_level]);
        INI_WriteInt(File,"Skin", PlayerInfo[playerid][player_skin]);
        INI_WriteInt(File,"AccountBank", PlayerInfo[playerid][player_accountbank]);
        INI_WriteInt(File,"BankMoney", PlayerInfo[playerid][player_bankmoney]);
        INI_Close(File);
    }
    return true;
}
forward LoadUser_data(playerid,name[],value[]);
public LoadUser_data(playerid,name[],value[])
{
    INI_Int("Password",PlayerInfo[playerid][player_password]);
    INI_Int("Money",PlayerInfo[playerid][player_money]);
    INI_Int("Staff",PlayerInfo[playerid][player_staff]);
    INI_Int("Level",PlayerInfo[playerid][player_level]);
    INI_Int("Skin", PlayerInfo[playerid][player_skin]);
    INI_Int("AccountBank", PlayerInfo[playerid][player_accountbank]);
    INI_Int("BankMoney", PlayerInfo[playerid][player_bankmoney]);
    return 1;
}
