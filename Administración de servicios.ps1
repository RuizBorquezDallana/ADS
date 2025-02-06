Get-Service
Get-Service -Name Spooler
Get-Service -DisplayName Hora*
Get-Service | Where-Object { $_.Status -eq "Running" }
Get-Service | Where-Object { $_.StartType -eq "Automatic" } | Select-Object Name, StartType
Get-Service -DependentServices Spooler
Get-Service -RequiredServices Fax
Stop-Service -Name Spooler -Confirm -PassThru
Start-Service -Name Spooler -Confirm -PassThru
Suspend-Service -Name stisvc -Confirm -PassThru
Get-Service | Where-Object CanPauseAndContinue -eq True
Suspend-Service -Name Spooler
Restart-Service -Name WSearch -Confirm -PassThru
Set-Service -Name dcsvc -DisplayName "Servicio de virtualización de credenciales de seguridad distribuidas"

Set-Service -Name BITS -StartupType Automatic -Confirm -PassThru | Select-Object Name, StartType
Set-Service -Name BITS -Description "Transfiere archivos en segundo plano mediante el uso de ancho de banda de red inactivo."
Get-CimInstance Win32_Service -Filter "Name = 'BITS'" | Format-List Name, Description

Set-Service -Name Spooler -Status Running -Confirm -PassThru
Set-Service -Name stisvc -Status Paused -Confirm -PassThru

Get-Process
Get-Process -Name Acrobat
Get-Process -Name Search*
Get-Process -Id 13948

Get-Process WINWORD -FileVersionInfo
Get-Process WINWORD -IncludeUserName
Get-Process WINWORD -Module

Stop-Process -Name Acrobat -Confirm -PassThru
Stop-Process -Id 10940 -Confirm -PassThru
Get-Process -Name Acrobat | Stop-Process -Confirm -PassThru

Start-Process -FilePath "C:\Windows\System32\notepad.exe" -PassThru
Start-Process -FilePath "cmd.exe" -ArgumentList "/c mkdir NuevaCarpeta" -WorkingDirectory "D:\Documents\FIC\Q6\ASO" -PassThru
Start-Process -FilePath "notepad.exe" -WindowStyle "Maximized" -PassThru
Start-Process -FilePath "D:\Documents\FIC\Q6\ASO\T1\T1.txt" -Verb Print -PassThru

Wait-Process -Name notepad