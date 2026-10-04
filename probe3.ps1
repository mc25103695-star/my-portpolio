$b=Get-Content -Raw -Encoding Byte -Path (Join-Path $env:UserProfile q.txt)
Write-Output ('FIRST=' + [System.Text.Encoding]::UTF8.GetString($b[0..2]))
Write-Output ('HAS_BOM=' + ($b[0] -eq 239 -and $b[1] -eq 191 -and $b[2] -eq 187))
Write-Output ('LEN=' + $b.Length)