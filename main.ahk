
;;; Main entry file

;;; HOTKEYS:

BST             := "*XButton1"
AMMO            := "*Del"
ARMOR           := "*."
JOBS            := "*F4"
THERMAL         := "*X"
SNIPER_SWAP     := "*2"
JET_BRAKE       := "*S"
SOLO_LOBBY      := "*F7"
SUSPEND_KEYS    := "*NumpadDiv"
RELOAD_SCRIPT   := "*+F5"

;;; KEYBINDS USED:

SNIPER          := "3"      ; Selecting a sniper rifle
THROWABLE       := "5"      ; Selecting a throwable
HEAVY_WEAPON    := "4"      ; Selecting a heavy weapon
INT_MENU        := "M"      ; Opening the interaction menu
WEAPON_WHEEL    := "Tab"    ; Opening the weapon wheel
AIRCRAFT_SLOW   := "+"      ; Aircraft brake, rebind
AIRCRAFT_BRAKE  := "s"      ; Aircraft brake, primary

;;; GLOBAL VARIABLES:

global hvyWeapons := 18 ; set here the number of loops to do in the ammo buy macro (higher = slower but more reliable).

;;; DEPENDENCIES:

#Include, %A_ScriptDir%\src\cfg.ahk
#Include, %A_ScriptDir%\src\utility.ahk
#Include, %A_ScriptDir%\src\macros.ahk
