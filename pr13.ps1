function Show-Menu {
    Write-Host "Area Calculator" -ForegroundColor Green
    Write-Host "Main Menu" -ForegroundColor Yellow
    Write-Host "Please select the option to perform the respective task" -ForegroundColor Yellow
    Write-Host "1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit" -ForegroundColor Green
}

function Get-Choice {
    Read-Host "Enter your choice"
}

function Show-SubMenu {
    Write-Host "Please select the next option" -ForegroundColor Yellow
    Write-Host "1: Return to Main Menu" -ForegroundColor Green
    Write-Host "2: Exit" -ForegroundColor Green
    $ch2 = Read-Host "Enter your choice"

    switch ($ch2) {
        1 { return $true }  # Continue to the main menu
        2 { exit }          # Exit the script
        default {
            Write-Host "Enter correct option" -ForegroundColor Red
            Show-SubMenu
        }
    }
}

function Calculate-SquareArea {
    Clear-Host
    Write-Host "Area of Square" -ForegroundColor Green
    [int]$side = Read-Host "Enter the side of the square"
    $area = $side * $side
    Write-Host "Area of the square: $area" -ForegroundColor Green
}

function Calculate-RectangleArea {
    Clear-Host
    Write-Host "Area of Rectangle" -ForegroundColor Green
    [int]$length = Read-Host "Enter length of the rectangle"
    [int]$breadth = Read-Host "Enter breadth of the rectangle"
    $area = $length * $breadth
    Write-Host "Area of the rectangle: $area" -ForegroundColor Green
}

function Calculate-CircleArea {
    Clear-Host
    Write-Host "Area of Circle" -ForegroundColor Green
    [int]$radius = Read-Host "Enter the radius of the circle"
    $area = 3.14 * $radius * $radius
    Write-Host "Area of the circle: $area" -ForegroundColor Green
}

function Calculate-TriangleArea {
    Clear-Host
    Write-Host "Area of Triangle" -ForegroundColor Green
    [int]$height = Read-Host "Enter height of triangle"
    [int]$base = Read-Host "Enter base of triangle"
    $area = 0.5 * $height * $base
    Write-Host "Area of Triangle: $area" -ForegroundColor Green
}

do {
    Show-Menu
    $ch1 = Get-Choice
    #switch teeb lihtsamaks valida erinevate funktsioonide vahel, teeb koodi lühemaks ka.
    switch ($ch1) {
        1 { Calculate-SquareArea }
        2 { Calculate-RectangleArea }
        3 { Calculate-CircleArea }
        4 { Calculate-TriangleArea }
    }

} while ($ch1 -ne "5")
