Write-Host "What is your name?"
$user=(whoami).Split('\')[1] 
Write-Host "$user" -ForegroundColor Green