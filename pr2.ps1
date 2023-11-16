$hash1 = @{name="John","Joe","Mary"; Daysworked=12,20,18}

$hash2 = @{Name = "John","Joe","Mary"; SalaryPerDay=100,120,150}


$JohnSalary = $hash1.DaysWorked[0] * $hash2.SalaryPerDay[0]
$JoeSalary = $hash1.DaysWorked[1] * $hash2.SalaryPerDay[1]
$MarySalary = $hash1.DaysWorked[2] * $hash2.SalaryPerDay[2]

$hash3 = @{name=$hash1.name[0],$hash1.name[1],$hash1.name[2];salary= $JohnSalary,$JoeSalary,$MarySalary}
$hash3
