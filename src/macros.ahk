
;;; MACROS:

/**
 *  BST macro. Assumes you're in a CEO.
 */
BST:
    Send, {Blind}{%INT_MENU%}{Enter}{Down 4}{Enter}{Down 1}{Enter}{%INT_MENU%}

    Return

/**
 *  Macro that buys ammo from the interaction menu.
 *  Uses the reloadLoop variable to determine number of loops.
 *  Assumes you're in a CEO / MC.
 */
AMMO:
    Send, {Blind}{%INT_MENU%}
    Sleep, 100
    Send, {Blind}{Down 3}{Enter}{Down 5}{Enter}{Up}

    Loop, %reloadLoop%
        Send, {Blind}{Enter}{Up 2}
    
    Send, {Blind}{Enter}{%INT_MENU%}

    Return

/**
 *  Drops armor from the CEO menu.
 */
ARMOR:
    Send, {Blind}{%INT_MENU%}{Enter}{Up 3}{Enter}{Down 3}{Enter}{%INT_MENU%}

    Return

/**
 *  Toggles the visibility of jobs on and off.
 */
JOBS:
    Send, {Blind}{%INT_MENU%}
    Sleep, 100
    Send, {Blind}{Up 8}{Enter}{down}

    Loop, 15
        Send, {Blind}{Enter}{Down}

    Send, {Blind}{Enter}{%INT_MENU%}

    Return

/**
 *  Toggles thermal helmet. Assumes you're in a CEO / MC. 
 */
THERMAL:
    Send, {Blind}{%INT_MENU%}
    Sleep, 100
    Send, {Blind}{Down 4}{Enter}{Down}{Enter}{Down 4}{Space}{%INT_MENU%}

    Return

/**
 *  Fast reload with the sniper.
 */
SNIPER_SWAP:
    Send, {Blind}{%THROWABLE%}{%SNIPER%}{%WEAPON_WHEEL%}

    Return

/**
 *  Brakes when you're in a jet. (Set a secondary keybind in game accordingly.)
 */
JET_BRAKE:
    While, GetKeyState(AIRCRAFT_BRAKE, "P")
    {
        Send, {Blind}{%AIRCRAFT_SLOW% down}
        Sleep, 200
        Send, {Blind}{%AIRCRAFT_SLOW% up}
        Sleep, 10
    }

    Return

/**
 *  Sweeps the lobby when called (suspends GTA for 8 seconds).
 */
SOLO_LOBBY:
    SoundPlay *48
    Suspend_Process("GTA5.exe")
    
    Sleep, 8000

    SoundPlay *16
    Resume_Process("GTA5.exe")

    Return

/**
 *  Suspends hotkeys!
 */
SUSPEND_KEYS:
    Suspend

    ; plays a varying sound depending on if the script was suspended or unsuspended:
    SoundBeep, (A_IsSuspended ? 180 : 360), 400, 10 

    Return

/**
 *  Shorthand for reloading the script.
 *  "Suspend" is included so that the hotkey may run outside of the game window.
 */
RELOAD_SCRIPT:
    Suspend
    
    SoundPlay *16
    Reload
