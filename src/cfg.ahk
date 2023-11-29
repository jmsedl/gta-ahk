
;;; Script configuration

; Attempts to run with admin privilegies:
If Not A_IsAdmin {
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}

;;; CONFIGURATION:

#Persistent
#SingleInstance Force
#NoEnv
#InstallKeybdHook
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#MaxThreadsPerHotkey 1
#MaxThreads 255
#IfWinActive Grand Theft Auto V
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWorkingDir %A_ScriptDir%

;;; HOTKEY FUNCTION MAPPING: (necessary boilerplate, do not touch!)

Hotkey, %BST%, BST
Hotkey, %AMMO%, AMMO
Hotkey, %ARMOR%, ARMOR
Hotkey, %JOBS%, JOBS
Hotkey, %THERMAL%, THERMAL
Hotkey, %SNIPER_SWAP%, SNIPER_SWAP
Hotkey, %JET_BRAKE%, JET_BRAKE
Hotkey, %SOLO_LOBBY%, SOLO_LOBBY
Hotkey, %SUSPEND_KEYS%, SUSPEND_KEYS
Hotkey, %RELOAD_SCRIPT%, RELOAD_SCRIPT

Return
