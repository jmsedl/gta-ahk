
;;; UTILITY FUNCTIONS:

/**
 *  Suspends a process by name or by PID.
 *  Returns -1 if unsuccessful.
 */
Suspend_Process(name_or_pid) {
    pid := (InStr(name_or_pid, ".")) ? Process_Exists(name_or_pid) : name_or_pid
    handle := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)

    If !handle
        Return -1

    DllCall("ntdll.dll\NtSuspendProcess", "Int", handle)
    DllCall("CloseHandle", "Int", handle)
}

/**
 *  Resumes a process.
 *  Returns -1 if unsuccessful.
 */
Resume_Process(name_or_pid) {
    pid := (InStr(name_or_pid, ".")) ? Process_Exists(name_or_pid) : name_or_pid
    handle := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)

    If !handle
        Return -1

    DllCall("ntdll.dll\NtResumeProcess", "Int", handle)
    DllCall("CloseHandle", "Int", handle)
}

/**
 *  Checks if a process exists.
 */
Process_Exists(name = "") {
    Process, Exist, % (name = "") ? DllCall("GetCurrentProcessID") : name

    Return Errorlevel
}
