ifdef RAX
	.code
		extern func:QWORD
		GetFileVersionInfoA proc
			jmp QWORD ptr func[0 * 8]
		GetFileVersionInfoA endp
		GetFileVersionInfoByHandle proc
			jmp QWORD ptr func[1 * 8]
		GetFileVersionInfoByHandle endp
		GetFileVersionInfoExA proc
			jmp QWORD ptr func[2 * 8]
		GetFileVersionInfoExA endp
		GetFileVersionInfoExW proc
			jmp QWORD ptr func[3 * 8]
		GetFileVersionInfoExW endp
		GetFileVersionInfoSizeA proc
			jmp QWORD ptr func[4 * 8]
		GetFileVersionInfoSizeA endp
		GetFileVersionInfoSizeExA proc
			jmp QWORD ptr func[5 * 8]
		GetFileVersionInfoSizeExA endp
		GetFileVersionInfoSizeExW proc
			jmp QWORD ptr func[6 * 8]
		GetFileVersionInfoSizeExW endp
		GetFileVersionInfoSizeW proc
			jmp QWORD ptr func[7 * 8]
		GetFileVersionInfoSizeW endp
		GetFileVersionInfoW proc
			jmp QWORD ptr func[8 * 8]
		GetFileVersionInfoW endp
		VerFindFileA proc
			jmp QWORD ptr func[9 * 8]
		VerFindFileA endp
		VerFindFileW proc
			jmp QWORD ptr func[10 * 8]
		VerFindFileW endp
		VerInstallFileA proc
			jmp QWORD ptr func[11 * 8]
		VerInstallFileA endp
		VerInstallFileW proc
			jmp QWORD ptr func[12 * 8]
		VerInstallFileW endp
		VerLanguageNameA proc
			jmp QWORD ptr func[13 * 8]
		VerLanguageNameA endp
		VerLanguageNameW proc
			jmp QWORD ptr func[14 * 8]
		VerLanguageNameW endp
		VerQueryValueA proc
			jmp QWORD ptr func[15 * 8]
		VerQueryValueA endp
		VerQueryValueW proc
			jmp QWORD ptr func[16 * 8]
		VerQueryValueW endp
else
	.model flat, C
	.stack 4096
	.code
		extern func:DWORD
		GetFileVersionInfoA proc
			jmp DWORD ptr func[0 * 4]
		GetFileVersionInfoA endp
		GetFileVersionInfoByHandle proc
			jmp DWORD ptr func[1 * 4]
		GetFileVersionInfoByHandle endp
		GetFileVersionInfoExA proc
			jmp DWORD ptr func[2 * 4]
		GetFileVersionInfoExA endp
		GetFileVersionInfoExW proc
			jmp DWORD ptr func[3 * 4]
		GetFileVersionInfoExW endp
		GetFileVersionInfoSizeA proc
			jmp DWORD ptr func[4 * 4]
		GetFileVersionInfoSizeA endp
		GetFileVersionInfoSizeExA proc
			jmp DWORD ptr func[5 * 4]
		GetFileVersionInfoSizeExA endp
		GetFileVersionInfoSizeExW proc
			jmp DWORD ptr func[6 * 4]
		GetFileVersionInfoSizeExW endp
		GetFileVersionInfoSizeW proc
			jmp DWORD ptr func[7 * 4]
		GetFileVersionInfoSizeW endp
		GetFileVersionInfoW proc
			jmp DWORD ptr func[8 * 4]
		GetFileVersionInfoW endp
		VerFindFileA proc
			jmp DWORD ptr func[9 * 4]
		VerFindFileA endp
		VerFindFileW proc
			jmp DWORD ptr func[10 * 4]
		VerFindFileW endp
		VerInstallFileA proc
			jmp DWORD ptr func[11 * 4]
		VerInstallFileA endp
		VerInstallFileW proc
			jmp DWORD ptr func[12 * 4]
		VerInstallFileW endp
		VerLanguageNameA proc
			jmp DWORD ptr func[13 * 4]
		VerLanguageNameA endp
		VerLanguageNameW proc
			jmp DWORD ptr func[14 * 4]
		VerLanguageNameW endp
		VerQueryValueA proc
			jmp DWORD ptr func[15 * 4]
		VerQueryValueA endp
		VerQueryValueW proc
			jmp DWORD ptr func[16 * 4]
		VerQueryValueW endp
endif
end
