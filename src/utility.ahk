
;;; UTILITY FUNCTIONS:

/**
 *  Suspends a process by name or by PID.
 *  Returns -1 if unsuccessful.
 */
Process_Suspend(name_or_pid) {
    pid := (InStr(name_or_pid, ".")) ? ProcExist(name_or_pid) : name_or_pid
    h := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)

    If !h
        Return -1

    DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
}

/**
 *  Resumes a process.
 *  Returns -1 if unsuccessful.
 */
Process_Resume(name_or_pid) {
    pid := (InStr(name_or_pid, ".")) ? ProcExist(name_or_pid) : name_or_pid
    h := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)

    If !h
        Return -1

    DllCall("ntdll.dll\NtResumeProcess", "Int", h)
    DllCall("CloseHandle", "Int", h)
}

/**
 *  Checks if a process exists.
 */
ProcExist(name = "") {
    Process, Exist, % (name = "") ? DllCall("GetCurrentProcessID") : name

    Return Errorlevel
}
