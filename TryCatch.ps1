cat .\try-catch.ps1
try
{
    Write-Output "Todo bien"
}
catch
{
    Write-Output "Algo lanzo una excepcion"
    Write-Output $_
}

try
{
    Start-Something -ErrorAction Stop
}
catch
{
    Write-Output "Algo genero una excepcion o uso Write-Error"
    Write-Output $_
}

$comando = [System.Data.SqlClient.SqlCommand]::New(queryString, connection)
try
{
    $comando.Connection.Open()
    $comando.ExecuteNonQuery()
}
finally
{
    Write-Error "Ha habido un problema con la ejecución de la query. Cerrando la conexión"
    $comando.Connection.Close()
}
