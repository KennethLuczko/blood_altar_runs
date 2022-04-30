; OPENOSRS CLIENT RESOLUTION 1520X900
SendMode Input
#NoEnv
#include WindHumanMouse.ahk
CoordMode, Pixel, Window

Z::
Loop
{
	blood_altar()
	restart_pixel_search()
}

restart_pixel_search() {
	Sleep, 1000
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
	PixelSearch, colossal_pouch_X, colossal_pouch_Y, 1228, 680, 1414, 839, 0x966C64, 0, Fast RGB
		Random, rand_colossal_pouch, 250, 275
		Send, {Shift down}
		MoveMouse(colossal_pouch_X, colossal_pouch_Y)
		MouseClick, left, colossal_pouch_X, colossal_pouch_Y
		Sleep rand_colossal_pouch
		Send, {Shift up}
	PixelSearch, blood_altar_X, blood_altar_Y, 771, 459, 1172, 855, 0x9B3B31, 0, Fast RGB
		Random, rand_blood_altar, 250, 350
		Random, random_find_middle_blood_altar, 22, 28
		blood_altar_X := blood_altar_X + random_find_middle_blood_altar
		blood_altar_Y := blood_altar_Y + random_find_middle_blood_altar
		MoveMouse(blood_altar_X, blood_altar_Y)
		MouseClick, left, %blood_altar_X%, %blood_altar_Y%
		Sleep rand_blood_altar
	PixelSearch, colossal_pouch_X, colossal_pouch_Y, 1228, 680, 1414, 839, 0x966C64, 0, Fast RGB
		Random, rand_colossal_pouch, 250, 275
		Send, {Shift down}
		MoveMouse(colossal_pouch_X, colossal_pouch_Y)
		MouseClick, left, colossal_pouch_X, colossal_pouch_Y
		Sleep rand_colossal_pouch
		Send, {Shift up}
	PixelSearch, blood_altar_X, blood_altar_Y, 771, 459, 1172, 855, 0x9B3B31, 0, Fast RGB
		Random, rand_blood_altar, 250, 350
		Random, random_find_middle_blood_altar, 22, 28
		blood_altar_X := blood_altar_X + random_find_middle_blood_altar`
		blood_altar_Y := blood_altar_Y + random_find_middle_blood_altar
		MoveMouse(blood_altar_X, blood_altar_Y)
		MouseClick, left, %blood_altar_X%, %blood_altar_Y%
		Sleep rand_blood_altar
		Random, rand_bank_teleport, 250, 275
		Send, {3}
		MoveMouse(1432, 935)
		Sleep rand_bank_teleport
		MouseClick, left, 1432, 935
		Send, {2}
	Sleep, 3000
	CoordMode, Pixel, Window
	PixelSearch, bank_X, bank_Y, 653, 230, 885, 462, 0x1FCD00, 0, Fast RGB
	If (ErrorLevel = 0)
	Random, rand_bank, 4500, 4750
	Random, rand_withdraw_deposit, 350, 500
		MoveMouse(bank_X, bank_Y)
		MouseClick, left, %bank_X%, %bank_Y%
		Sleep rand_bank
		Random, random_find_deposit, 1, 5
		random_deposit_X := 847 + random_find_deposit
		random_deposit_Y := 832 + random_find_deposit
		random_withdraw_X := 817 + random_find_deposit
		random_withdraw_y := 761 + random_find_deposit
		random_cape_teleport_X := 1297 + random_find_deposit
		random_cape_teleport_Y := 769 + random_find_deposit
		MoveMouse(random_deposit_X, random_deposit_Y)
		Sleep, 50
		MouseClick, left, random_deposit_X, random_deposit_Y
		Sleep rand_withdraw_deposit
		MoveMouse(random_withdraw_X, random_withdraw_Y)
		MouseClick, left, random_withdraw_X, random_withdraw_Y
		PixelSearch, colossal_pouch_X, colossal_pouch_Y, 1228, 680, 1414, 839, 0x966C64, 0, Fast RGB
		Random, rand_colossal_pouch, 350, 375
		Send, {Shift down}
		MoveMouse(colossal_pouch_X, colossal_pouch_Y)
		MouseClick, left, colossal_pouch_X, colossal_pouch_Y
		Sleep rand_colossal_pouch
		Send, {Shift up}
		Sleep rand_withdraw_deposit
		MoveMouse(random_withdraw_X, random_withdraw_Y)
		Sleep, 100
		MouseClick, left, random_withdraw_X, random_withdraw_Y
		Random, rand_colossal_pouch, 250, 275
		Send, {Shift down}
		MoveMouse(colossal_pouch_X, colossal_pouch_Y)
		MouseClick, left, colossal_pouch_X, colossal_pouch_Y
		Sleep rand_colossal_pouch
		Send, {Shift up}
		Sleep 999
		MoveMouse(random_withdraw_X, random_withdraw_Y)
		Sleep, 200
		MouseClick, left, random_withdraw_X, random_withdraw_Y
		Sleep, 333
		Send, {Escape}
		Sleep, 500
		Send, {3}
		MoveMouse(random_cape_teleport_X, random_cape_teleport_Y)
		MouseClick, left, random_cape_teleport_X, random_cape_teleport_Y
		Send, {2}
		Sleep, 3000
	}
}