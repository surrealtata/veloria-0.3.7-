#include <YSI\y_hooks>

// ` Text Label - Pickups ` //

stock Ucitaj_TextLabel()
{
    // ` sign `
    Create3DTextLabel(""veloria"server information\n"bijela"osnivac projekta: "veloria"surreal\n"bijela"founder: "veloria"surreal\n"bijela"mapper: "crvena"x", 0xFFFFFF, 1335.4480, -984.6666, 33.8679, 30.0, 0, 1);

    // ` banka `
	CreateDynamic3DTextLabel(""veloria"[ Banka ]\n"bijela"`LALT` za ulaz", 0xFFFFFFAA, 1454.8263,-1010.6777,26.9590, 25.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 20.0);
	
	CreateDynamic3DTextLabel(""veloria"[ Banka ]\n"bijela"`LALT` za izlaz", 0xFFFFFFAA, -1737.4226,803.0189,145.1328, 25.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 20.0);
	
	CreateDynamic3DTextLabel(""veloria"[ "svijetlo_plava"OTVARANJE RACUNA "veloria"]\n"bijela"[ /otvoriracun ]", 0xFFFFFFAA, -1753.5330,780.8963,145.1328, 25.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 20.0);
	
	CreateDynamic3DTextLabel(""veloria"[ "svijetlo_plava"INFORMACIJE "veloria"]\n"bijela"[ /banka ]", 0xFFFFFFAA,-1753.3772,785.7462,145.1328, 25.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 20.0);
	
	// ` opstina `
	CreateDynamic3DTextLabel(""veloria"[ Opstina ]\n"bijela"`LALT` za ulaz", 0xFFFFFFAA, 1479.3579,-1750.9418,14.3044, 25.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 20.0);
	
	CreateDynamic3DTextLabel(""veloria"[ Opstina ]\n"bijela"`LALT` za izlaz", 0xFFFFFFAA, -2128.7031,-175.5791,-79.09548, 25.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 20.0);

	return 1;
}
