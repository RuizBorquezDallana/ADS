Get-ChildItem *.txt
(Get-Item .\test.txt).CopyTo("D:\Desktop\prueba.txt")
(Get-Item .\test.txt).Delete()
Get-ChildItem *.txt

$miObjeto = New-Object PSObject
$miObjeto | Add-Member -MemberType NoteProperty -Name Nombre -Value "Miguel"
$miObjeto | Add-Member -MemberType NoteProperty -Name Edad -Value 23
$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "Hola Mundo!" }

$miObjeto = New-Object -TypeName PSObject -Property @{
    Nombre = "Miguel"
    Edad   = 23
}
$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "Hola Mundo!" }
$miObjeto | Get-Member

$miObjeto = [PSCustomObject] @{
    Nombre = "Miguel"
    Edad   = 23
}
$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "Hola Mundo!" }
$miObjeto | Get-Member
