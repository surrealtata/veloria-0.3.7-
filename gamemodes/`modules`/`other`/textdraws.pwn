#include <a_samp>
#include <YSI\y_hooks>


new PlayerText:Ingame_PTD[MAX_PLAYERS][64];
new Text:fortz_ptd[4];

stock CreateGTextDraws()
{
    fortz_ptd[0] = TextDrawCreate(309.799926, 435.000000, "surreal_corleone");
    TextDrawLetterSize(fortz_ptd[0], 0.110999, 0.488750);
    TextDrawAlignment(fortz_ptd[0], 2);
    TextDrawColor(fortz_ptd[0], 1869637631);
    TextDrawSetShadow(fortz_ptd[0], 0);
    TextDrawBackgroundColor(fortz_ptd[0], 255);
    TextDrawFont(fortz_ptd[0], 2);
    TextDrawSetProportional(fortz_ptd[0], 1);

    fortz_ptd[2] = TextDrawCreate(577.299804, 17.187500, "16:24");
    TextDrawLetterSize(fortz_ptd[2], 0.118000, 0.563124);
    TextDrawAlignment(fortz_ptd[2], 1);
    TextDrawColor(fortz_ptd[2], 255);
    TextDrawSetShadow(fortz_ptd[2], 0);
    TextDrawBackgroundColor(fortz_ptd[2], 255);
    TextDrawFont(fortz_ptd[2], 2);
    TextDrawSetProportional(fortz_ptd[2], 1);

    fortz_ptd[3] = TextDrawCreate(570.799804, 21.562500, "23/6/2024");
    TextDrawLetterSize(fortz_ptd[3], 0.118000, 0.563124);
    TextDrawAlignment(fortz_ptd[3], 1);
    TextDrawColor(fortz_ptd[3], 255);
    TextDrawSetShadow(fortz_ptd[3], 0);
    TextDrawBackgroundColor(fortz_ptd[3], 255);
    TextDrawFont(fortz_ptd[3], 2);
    TextDrawSetProportional(fortz_ptd[3], 1);
}

stock ShowTextDrawsForPlayer(playerid)
{
    for (new i = 0; i < sizeof(fortz_ptd); i++)
    {
        {
            TextDrawShowForPlayer(playerid, fortz_ptd[i]);
        }
    }
}

stock CreatePTextDraws(playerid)
{

	Ingame_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 263.500000, 430.625000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][0], 95.000000, 12.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][0], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][0], 0);

	Ingame_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 256.799987, 425.675018, "/");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][1], 0.486499, 2.085623);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][1], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][1], 1);

	Ingame_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 263.500000, 437.625000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][2], -3.729999, 5.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][2], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][2], 0);

	Ingame_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 264.799987, 435.437500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][3], -3.729999, 5.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][3], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][3], 0);

	Ingame_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 263.400115, 432.875030, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][4], -1.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][4], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][4], 0);

	Ingame_PTD[playerid][5] = CreatePlayerTextDraw(playerid, 262.599884, 435.200225, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][5], -1.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][5], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][5], 0);

	Ingame_PTD[playerid][6] = CreatePlayerTextDraw(playerid, 262.499847, 441.325225, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][6], -4.000000, 1.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][6], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][6], 0);

	Ingame_PTD[playerid][7] = CreatePlayerTextDraw(playerid, 356.500000, 426.112518, "/");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][7], 0.486499, 2.085623);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][7], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][7], 1);

	Ingame_PTD[playerid][8] = CreatePlayerTextDraw(playerid, 358.500030, 430.750061, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][8], 3.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][8], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][8], 0);

	Ingame_PTD[playerid][9] = CreatePlayerTextDraw(playerid, 356.099884, 437.050445, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][9], 3.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][9], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][9], 0);

	Ingame_PTD[playerid][10] = CreatePlayerTextDraw(playerid, 356.599914, 434.450286, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][10], 3.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][10], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][10], 0);

	Ingame_PTD[playerid][11] = CreatePlayerTextDraw(playerid, 357.699981, 433.550231, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][11], 2.710000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][11], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][11], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][11], 0);

	Ingame_PTD[playerid][12] = CreatePlayerTextDraw(playerid, 358.400024, 432.250152, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][12], 2.710000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][12], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][12], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][12], 0);

	Ingame_PTD[playerid][13] = CreatePlayerTextDraw(playerid, 359.700103, 430.750061, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][13], 2.710000, 3.470000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][13], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][13], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][13], 0);

	Ingame_PTD[playerid][14] = CreatePlayerTextDraw(playerid, 360.500152, 430.750061, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][14], 2.710000, 0.950002);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][14], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][14], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][14], 0);

	Ingame_PTD[playerid][15] = CreatePlayerTextDraw(playerid, 293.799804, 430.625000, "player_name");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][15], 0.110999, 0.488750);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][15], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][15], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][15], 1);

	Ingame_PTD[playerid][16] = CreatePlayerTextDraw(playerid, 1966.000000, 467.812500, "loka");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][16], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][16], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][16], 1);

	Ingame_PTD[playerid][17] = CreatePlayerTextDraw(playerid, 338.000000, 432.812500, "ld_tatt:11dice");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][17], 15.000000, 9.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][17], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][17], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][17], 0);

	Ingame_PTD[playerid][18] = CreatePlayerTextDraw(playerid, 279.999938, 433.250000, "ld_tatt:11dice");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][18], -13.000000, 9.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][18], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][18], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][18], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][18], 0);

	Ingame_PTD[playerid][19] = CreatePlayerTextDraw(playerid, 41.999904, 430.187500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][19], 95.000000, 12.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][19], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][19], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][19], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][19], 0);

	Ingame_PTD[playerid][20] = CreatePlayerTextDraw(playerid, 35.200004, 425.475006, "/");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][20], 0.486499, 2.085623);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][20], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][20], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][20], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][20], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][20], 1);

	Ingame_PTD[playerid][21] = CreatePlayerTextDraw(playerid, 135.000000, 425.675018, "/");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][21], 0.486499, 2.085623);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][21], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][21], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][21], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][21], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][21], 1);

	Ingame_PTD[playerid][22] = CreatePlayerTextDraw(playerid, 137.000000, 430.187500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][22], 4.000000, 4.169935);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][22], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][22], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][22], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][22], 0);

	Ingame_PTD[playerid][23] = CreatePlayerTextDraw(playerid, 136.000000, 433.312530, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][23], 2.000000, 7.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][23], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][23], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][23], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][23], 0);

	Ingame_PTD[playerid][24] = CreatePlayerTextDraw(playerid, 136.799926, 434.000152, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][24], 2.000000, 4.539943);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][24], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][24], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][24], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][24], 0);

	Ingame_PTD[playerid][25] = CreatePlayerTextDraw(playerid, 139.299926, 430.500152, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][25], 2.000000, 3.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][25], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][25], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][25], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][25], 0);

	Ingame_PTD[playerid][26] = CreatePlayerTextDraw(playerid, 136.699859, 433.650238, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][26], 3.000000, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][26], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][26], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][26], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][26], 0);

	Ingame_PTD[playerid][27] = CreatePlayerTextDraw(playerid, 136.199859, 434.525238, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][27], 3.000000, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][27], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][27], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][27], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][27], 0);

	Ingame_PTD[playerid][28] = CreatePlayerTextDraw(playerid, 135.699859, 432.587646, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][28], 3.000000, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][28], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][28], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][28], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][28], 0);

	Ingame_PTD[playerid][29] = CreatePlayerTextDraw(playerid, 37.299865, 440.175262, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][29], 4.330006, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][29], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][29], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][29], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][29], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][29], 0);

	Ingame_PTD[playerid][30] = CreatePlayerTextDraw(playerid, 37.599861, 439.050140, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][30], 4.330006, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][30], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][30], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][30], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][30], 0);

	Ingame_PTD[playerid][31] = CreatePlayerTextDraw(playerid, 38.099861, 437.300140, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][31], 4.330006, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][31], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][31], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][31], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][31], 0);

	Ingame_PTD[playerid][32] = CreatePlayerTextDraw(playerid, 39.099861, 435.112640, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][32], 4.330006, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][32], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][32], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][32], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][32], 0);

	Ingame_PTD[playerid][33] = CreatePlayerTextDraw(playerid, 40.099861, 433.362640, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][33], 4.330006, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][33], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][33], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][33], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][33], 0);

	Ingame_PTD[playerid][34] = CreatePlayerTextDraw(playerid, 40.799865, 431.475158, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][34], 4.330006, 2.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][34], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][34], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][34], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][34], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][34], 0);

	Ingame_PTD[playerid][35] = CreatePlayerTextDraw(playerid, 76.799804, 430.187500, "LOCATION");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][35], 0.110999, 0.488750);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][35], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][35], -1);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][35], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][35], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][35], 1);

	Ingame_PTD[playerid][36] = CreatePlayerTextDraw(playerid, 3123.000000, 385.562500, "lokatu");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][36], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][36], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][36], -1);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][36], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][36], 1);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][36], 1);

	Ingame_PTD[playerid][37] = CreatePlayerTextDraw(playerid, 117.999977, 432.537536, "ld_tatt:11dice");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][37], 15.000000, 9.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][37], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][37], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][37], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][37], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][37], 0);

	Ingame_PTD[playerid][38] = CreatePlayerTextDraw(playerid, 57.999938, 432.812500, "ld_tatt:11dice");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][38], -13.000000, 9.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][38], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][38], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][38], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][38], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][38], 0);

	Ingame_PTD[playerid][39] = CreatePlayerTextDraw(playerid, 560.000000, 3.187500, "Veloria");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][39], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][39], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][39], -1908046337);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][39], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][39], 3);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][39], 1);

	Ingame_PTD[playerid][40] = CreatePlayerTextDraw(playerid, 3267.000000, 503.687500, "ahaa");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][40], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][40], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][40], -1);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][40], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][40], 1);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][40], 1);

	Ingame_PTD[playerid][41] = CreatePlayerTextDraw(playerid, 2237.500000, 397.375000, "okeoke");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][41], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][41], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][41], -1);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][41], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][41], 1);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][41], 1);

	Ingame_PTD[playerid][42] = CreatePlayerTextDraw(playerid, 470.303039, 430.625000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][42], 95.000000, 12.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][42], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][42], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][42], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][42], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][42], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][42], 0);

	Ingame_PTD[playerid][43] = CreatePlayerTextDraw(playerid, 463.699981, 425.912506, "/");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][43], 0.486499, 2.085623);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][43], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][43], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][43], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][43], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][43], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][43], 1);

	Ingame_PTD[playerid][44] = CreatePlayerTextDraw(playerid, 563.799926, 426.212524, "/");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][44], 0.486499, 2.085623);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][44], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][44], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][44], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][44], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][44], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][44], 1);

	Ingame_PTD[playerid][45] = CreatePlayerTextDraw(playerid, 470.299896, 442.612670, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][45], -4.890018, -1.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][45], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][45], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][45], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][45], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][45], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][45], 0);

	Ingame_PTD[playerid][46] = CreatePlayerTextDraw(playerid, 470.799896, 441.737670, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][46], -4.890018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][46], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][46], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][46], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][46], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][46], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][46], 0);

	Ingame_PTD[playerid][47] = CreatePlayerTextDraw(playerid, 471.699951, 439.837554, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][47], -4.890018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][47], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][47], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][47], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][47], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][47], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][47], 0);

	Ingame_PTD[playerid][48] = CreatePlayerTextDraw(playerid, 472.299987, 438.037445, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][48], -4.890018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][48], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][48], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][48], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][48], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][48], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][48], 0);

	Ingame_PTD[playerid][49] = CreatePlayerTextDraw(playerid, 473.100036, 436.637359, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][49], -4.890018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][49], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][49], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][49], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][49], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][49], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][49], 0);

	Ingame_PTD[playerid][50] = CreatePlayerTextDraw(playerid, 473.600067, 435.237274, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][50], -4.890018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][50], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][50], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][50], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][50], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][50], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][50], 0);

	Ingame_PTD[playerid][51] = CreatePlayerTextDraw(playerid, 474.500122, 434.337219, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][51], -4.890018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][51], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][51], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][51], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][51], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][51], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][51], 0);

	Ingame_PTD[playerid][52] = CreatePlayerTextDraw(playerid, 570.199951, 432.587219, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][52], -4.850018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][52], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][52], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][52], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][52], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][52], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][52], 0);

	Ingame_PTD[playerid][53] = CreatePlayerTextDraw(playerid, 569.300170, 434.187316, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][53], -4.850018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][53], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][53], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][53], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][53], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][53], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][53], 0);

	Ingame_PTD[playerid][54] = CreatePlayerTextDraw(playerid, 569.000244, 435.787414, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][54], -4.850018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][54], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][54], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][54], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][54], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][54], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][54], 0);

	Ingame_PTD[playerid][55] = CreatePlayerTextDraw(playerid, 568.100463, 437.687530, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][55], -4.850018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][55], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][55], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][55], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][55], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][55], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][55], 0);

	Ingame_PTD[playerid][56] = CreatePlayerTextDraw(playerid, 567.300659, 439.487640, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][56], -4.850018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][56], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][56], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][56], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][56], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][56], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][56], 0);

	Ingame_PTD[playerid][57] = CreatePlayerTextDraw(playerid, 566.800781, 441.087738, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][57], -4.850018, -1.709998);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][57], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][57], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][57], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][57], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][57], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][57], 0);

	Ingame_PTD[playerid][58] = CreatePlayerTextDraw(playerid, 503.799804, 434.562500, "in_progress");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][58], 0.110999, 0.488750);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][58], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][58], -1);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][58], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][58], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][58], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][58], 1);

	Ingame_PTD[playerid][59] = CreatePlayerTextDraw(playerid, 261.400115, 436.850006, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][59], -1.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][59], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][59], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][59], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][59], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][59], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][59], 0);

	Ingame_PTD[playerid][60] = CreatePlayerTextDraw(playerid, 260.300048, 438.650115, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][60], -1.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][60], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][60], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][60], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][60], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][60], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][60], 0);

	Ingame_PTD[playerid][61] = CreatePlayerTextDraw(playerid, 263.200225, 432.149719, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][61], -1.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][61], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][61], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][61], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][61], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][61], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][61], 0);

	Ingame_PTD[playerid][62] = CreatePlayerTextDraw(playerid, 262.800201, 433.549804, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, Ingame_PTD[playerid][62], -1.000000, 4.000000);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][62], 1);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][62], 488382719);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][62], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][62], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][62], 4);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][62], 0);
	
 	Ingame_PTD[playerid][63] = CreatePlayerTextDraw(playerid, 88.299926, 435.000000, "LOS_SANTOS_CRKVA");
	PlayerTextDrawLetterSize(playerid, Ingame_PTD[playerid][63], 0.110999, 0.488750);
	PlayerTextDrawAlignment(playerid, Ingame_PTD[playerid][63], 2);
	PlayerTextDrawColor(playerid, Ingame_PTD[playerid][63], 1869637631);
	PlayerTextDrawSetShadow(playerid, Ingame_PTD[playerid][63], 0);
	PlayerTextDrawBackgroundColor(playerid, Ingame_PTD[playerid][63], 255);
	PlayerTextDrawFont(playerid, Ingame_PTD[playerid][63], 2);
	PlayerTextDrawSetProportional(playerid, Ingame_PTD[playerid][63], 1);

}

task VremeDatum[1000]()
{
	new dan, godina, mesec;
	getdate(godina, mesec, dan);
	new sati,minuti;
	gettime(sati, minuti);
	new stringic[64];
    format(stringic, sizeof(stringic), "%d/%s%d/%s%d", dan, ((mesec < 10) ? ("0") : ("")), mesec, (godina < 10) ? ("0") : (""), godina);
	TextDrawSetString(fortz_ptd[3], stringic);
    format(stringic, sizeof(stringic), "%s%d:%s%d", (sati < 10) ? ("0") : (""), sati, (minuti < 10) ? ("0") : (""), minuti);
	TextDrawSetString(fortz_ptd[2], stringic);
	return 1;
}
hook OnPlayerConnect(playerid)
{
    new name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, sizeof(name));
    TextDrawSetString(fortz_ptd[0],name);
}
hook OnPlayerSpawn(playerid)
{
    // ` TextDraws ` //
    CreatePTextDraws(playerid);
    ShowTextDrawsForPlayer(playerid);
    for(new i=0; i < 64; i++)
	{
	    PlayerTextDrawShow(playerid, Ingame_PTD[playerid][i]);
	}
	return 1;
}

