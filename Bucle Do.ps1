cat .\do-while.ps1
$valor = 5
$multiplicacion = 1
do
{
    $multiplicacion = $multiplicacion * $valor
    $valor--
}
while ($valor -gt 0)

Write-Host $multiplicacion

.\do-while.ps1

cat .\do-until.ps1
$valor = 5
$multiplicacion = 1
do
{
    $multiplicacion = $multiplicacion * $valor
    $valor--
}
until ($valor -eq 0)

Write-Host $multiplicacion

.\do-until.ps1
