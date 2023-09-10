Get-WMIObject win32_diskdrive -computer (Get-Content C:\Temp\computers1234.txt) | 
Where-Object MediaType -eq 'Fixed hard disk media' | 
Select SystemName,Model,@{Name='Size(GB)';Exp={$_.Size /1gb -as [int]}} |
Export-CSV "C:\Temp\results.csv"
