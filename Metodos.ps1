Get-Service | Where-Object { $_.Status -eq "Running" }

(Get-Item .\test.txt).IsReadOnly
(Get-Item .\test.txt).IsReadOnly = 1
(Get-Item .\test.txt).IsReadOnly