; OPENOSRS CLIENT RESOLUTION 1520X900
SendMode Input
#NoEnv
#include WindHumanMouse.ahk
CoordMode, Pixel, Window

Z::
{
	blood_altar()
	colossal_pouch()
	blood_altar_close()
	colossal_pouch()
	blood_altar_close()
	bank_teleport()
}

blood_altar() {
	CoordMode, Pixel, Window
	PixelSearch, blood_altar_X, blood_altar_Y, 771, 459, 1172, 855, 0x9B3B31, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, rand_blood_altar, 2250, 2350
		Random, random_find_middle_blood_altar, 22, 28

		blood_altar_X := blood_altar_X + random_find_middle_blood_altar
		blood_altar_Y := blood_altar_Y + random_find_middle_blood_altar
		MoveMouse(blood_altar_X, blood_altar_Y)
		MouseClick, left, %blood_altar_X%, %blood_altar_Y%
		Sleep rand_blood_altar
	}
	return
}

blood_altar_close() {
	CoordMode, Pixel, Window
	PixelSearch, blood_altar_X, blood_altar_Y, 771, 459, 1172, 855, 0x9B3B31, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, rand_blood_altar, 250, 350
		Random, random_find_middle_blood_altar, 22, 28

		blood_altar_X := blood_altar_X + random_find_middle_blood_altar
		blood_altar_Y := blood_altar_Y + random_find_middle_blood_altar
		MoveMouse(blood_altar_X, blood_altar_Y)
		MouseClick, left, %blood_altar_X%, %blood_altar_Y%
		Sleep rand_blood_altar
	}
	return
}

colossal_pouch() {
	PixelSearch, colossal_pouch_X, colossal_pouch_Y, 1228, 680, 1414, 839, 0x966C64, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, rand_colossal_pouch, 250, 275

		Send, {Shift down}
		MoveMouse(colossal_pouch_X, colossal_pouch_Y)
		MouseClick, left, colossal_pouch_X, colossal_pouch_Y
		Sleep rand_colossal_pouch
		Send, {Shift up}
	}
	return
}

bank_teleport() {
	{
		Random, rand_bank_teleport, 250, 275

		Send, {3}
		MoveMouse(1432, 935)
		Sleep rand_bank_teleport
		MouseClick, left, 1432, 935
	}
	return
}