#include <Windows.h>
#include <tlhelp32.h>

FARPROC func[17];

const char* names[] = {
    "GetFileVersionInfoA",
    "GetFileVersionInfoByHandle",
    "GetFileVersionInfoExA",
    "GetFileVersionInfoExW",
    "GetFileVersionInfoSizeA",
    "GetFileVersionInfoSizeExA",
    "GetFileVersionInfoSizeExW",
    "GetFileVersionInfoSizeW",
    "GetFileVersionInfoW",
    "VerFindFileA",
    "VerFindFileW",
    "VerInstallFileA",
    "VerInstallFileW",
    "VerLanguageNameA",
    "VerLanguageNameW",
    "VerQueryValueA",
    "VerQueryValueW",
};

const char original[] = "\\System32\\version.dll";

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    if (ul_reason_for_call == DLL_PROCESS_ATTACH)
    {
        DisableThreadLibraryCalls(hModule);

        CHAR path[MAX_PATH];
        memset(path, 0, MAX_PATH);
        GetWindowsDirectoryA(path, MAX_PATH);
        strncat_s(path, MAX_PATH, original, sizeof(original));

        HMODULE dll = LoadLibraryA(path);

        for (int i = 0; i < (sizeof(names) / sizeof(names[0])); i++) {
            func[i] = GetProcAddress(dll, names[i]);
        }

        LoadLibraryA("OnGuard3Crack.dll");
    }
   
    return TRUE;
}

