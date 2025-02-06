Get-LocalUser
Get-LocalUser -Name "Miguel" | Select-Object *
Get-LocalUser -SID S-1-5-21-619924196-4045554399-1956444398-500 | Select-Object *

Get-LocalGroup
Get-LocalGroup -Name Administradores | Select-Object *
Get-LocalGroup -SID S-1-5-32-545 | Select-Object *

New-LocalUser -Name "Usuario1" -Description "Usuario de prueba 1" -NoPassword
New-LocalUser -Name "Usuario2" -Description "Usuario de prueba 2" -Password (ConvertTo-SecureString "Aa1Patinete" -AsPlainText -Force)

Get-LocalUser -Name "Usuario1"
Remove-LocalUser -Name "Usuario1"
Get-LocalUser -Name "Usuario2"
Remove-LocalUser -Name "Usuario2"

New-LocalGroup -Name "Grupo1" -Description "Grupo de prueba 1"

Add-LocalGroupMember -Group Grupo1 -Member Usuario2 -Verbose
Get-LocalGroupMember Grupo1

Remove-LocalGroupMember -Group Grupo1 -Member Usuario1
Remove-LocalGroupMember -Group Grupo1 -Member Usuario2
Get-LocalGroupMember Grupo1

Remove-LocalGroup -Name "Grupo1"
Get-LocalGroup -Name "Grupo1"
