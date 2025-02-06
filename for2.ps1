cat .\for2.ps1
for (($i = 0;$j = 0); $i -lt 5; $($i++;$j++))
{
    "`$i:$i"
    "`$j:$j"
}

.\for2.ps1