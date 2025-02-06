$PSVersionTable
$mensaje = (Test-Path $path) ? "Path existe" : "Path no encontrado"
$mensaje