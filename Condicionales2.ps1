$numero = 2

if ( $numero -ge 3 ) {
    Write-Output "El numero [$numero] es mayor o igual que 3"
}
elseif ( $numero -lt 2 ) {
    Write-Output "El numero [$numero] es menor que 2"
}
else {
    Write-Output "El numero [$numero] es igual a 2"
}
