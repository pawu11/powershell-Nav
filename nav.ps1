function DisplayNAV {
Clear-Host
Write-Host @"
===============================================
|  POWERSHELL NAV - USER Navigation           | 
===============================================
|                                             |
|    1) PING 8.8.8.8                          |
|    2) PING www.google.de                    |
|    3) Ping Custom                           |
|    4) EXIT                                  |
===============================================

"@

$MENU = Read-Host "OPTION"
Switch ($MENU)
{
1 {
#OPTION1 - PING 8.8.8.8
$OPTION1 = "8.8.8.8"
Test-Connection -Count 1 -ComputerName $OPTION1 -Quiet
Start-Sleep -Seconds 3
DisplayNAV
}
2 {
#OPTION2 - PING google.de
$OPTION2 = "www.google.de1"
Test-Connection -Count 1 -ComputerName $OPTION2 -Quiet
Start-Sleep -Seconds 3
DisplayNAV
}
3 {
#OPTION3 - PING Custom
$OPTION3 = Read-Host "HOST"
Test-Connection -ComputerName $OPTION3
Start-Sleep -Seconds 3
DisplayNAV
}
4 {
#OPTION3 - EXIT
Write-Host "Bye"
Break
}
default {
#DEFAULT OPTION
Write-Host "Option not available"
Start-Sleep -Seconds 2
$OPTION1 = Read-Host "HOST"
Test-Connection -ComputerName $OPTION1
Start-Sleep -Seconds 2
}
}
}
DisplayNAV