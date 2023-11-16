$num1 = Read-Host "Sisesta esimene number"
$num2 = Read-Host "Sisesta teine väärtus"

if ($num1 -gt $num2)
    {
      Write-Host "Suurem number on: $num1 "
    }
else
    {
      Write-Host "Suurem number on: $num2 "
    }

sleep 5
# Teine practice 
 
 Write-Host "Vali riik" -ForegroundColor Yellow
Write-Host "1 : India" -ForegroundColor Cyan
Write-Host "2: Austraalia" -ForegroundColor Cyan
Write-Host "3: hiina" -ForegroundColor Cyan
$valik = Read-Host "Vali riik"
if($valik -eq "1")
{
Write-Host "India pealinn on New Delhi" -ForegroundColor Green
}
elseif($valik -eq "2")
{
Write-Host "Austraalia pealinn on Canberra" -ForegroundColor Green
}
elseif($valik -eq "3") {
Write-Host "Hiina pealinn on Beijing" -ForegroundColor Green
}
else
{
Write-Host "Sellist valikut pole" -ForegroundColor Red
}