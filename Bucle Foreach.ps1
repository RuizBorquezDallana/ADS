cat .\foreach1.ps1
$soo = "freebsd", "openbsd", "solaris", "fedora", "ubuntu", "netbsd"
foreach ($so in $soo)
{
    Write-Host $so
}

.\foreach1.ps1

cat .\foreach2.ps1
foreach ($archivo in Get-ChildItem)
{
    if ($archivo.length -ge 10KB)
    {
        Write-Host $archivo -> [($archivo.length)]
    }
}

.\foreach2.ps1