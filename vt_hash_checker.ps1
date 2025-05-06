$file_hash = Get-fileHash -Path "C:\my_path_here" -Algorithm SHA1 | Select-Object Hash
$headers=@{}
$headers.Add("accept", "application/json")
$headers.Add("x-apikey", "insert your api key")
$response = Invoke-WebRequest -Uri 'https://www.virustotal.com/api/v3/files/$file_hash' -Method GET -Headers $headers
$response.Content.Split(',')