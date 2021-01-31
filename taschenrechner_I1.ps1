cls
do {
cls
write-host "Herzlich Willkommen"

[char]$operation = Read-Host "Welche Operation möchten Sie ausführen +,-,*,/ ?"

[double]$ergebniss = ""

[double] $zahlEins = Read-Host "Geben Sie die erste Zahl ein"

[double] $zahlZwei = Read-Host "Geben Sie die zweite Zahl ein"

if ($zahlZwei -eq "0" -and $operation -eq "/") {
[double]$zahlZwei=Read-Host "Gib die zweite Zahl erneut ein (Division durch 0)"
}

if ($operation -eq "+") {
$ergebniss = $zahlEins + $zahlZwei
write-Host "Ihr Resultat beträgt $ergebniss"
}

elseif ($operation -eq "-") {
$ergebniss = $zahlEins - $zahlZwei
write-Host "Ihr Resultat beträgt $ergebniss"
}

elseif ($operation -eq "*") {
$ergebniss = $zahlEins * $zahlZwei
write-Host "Ihr Resultat beträgt $ergebniss"
}

elseif ($operation -eq "/") {
$ergebniss = $zahlEins / $zahlZwei
write-Host "Ihr Resultat beträgt $ergebniss"
}

else {
write-Host "Dieser Operator wird nicht erkannt"
}


$end = read-Host "Wollen Sie weitere Berechnungen durchführen Y oder N?"
if ($end -eq "N") {
exit
}
} until ($end -eq "N")