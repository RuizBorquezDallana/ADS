cat .\for1.ps1
for (($i = 0), ($j = 0); $i -lt 5; $i++)
{
    "`$i:$i"
    "`$j:$j"
}

.\for1.ps1