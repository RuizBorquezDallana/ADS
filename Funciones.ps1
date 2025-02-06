Get-Process -Name Acrobat | Stop-Process

Get-Help -Full Get-Process
Get-Help -Full Stop-Process

Get-Process
Get-Process -Name Acrobat | Stop-Process
Get-Process

Get-Help -Full Get-ChildItem
Get-Help -Full Get-Clipboard

Get-ChildItem *.txt | Get-Clipboard

Get-Help -Full Stop-Service

Get-Service
Get-Service Spooler | Stop-Service
Get-Service
"Spooler" | Stop-Service
Get-Service

$miObjeto = [PSCustomObject] @{
    Name = "Spooler"
}
$miObjeto | Stop-Service
Get-Service