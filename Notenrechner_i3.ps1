#Deklaration der Variabeln
[double] $maxpunktzahl = 0;
[double] $erreichtepunktzahl = 0;
[double] $Note = 0;
[double] $gerundetNote = 0;
[double] $gerundet = 0;
[string]$entscheidung = "etwas"

cls

do {
#Eingabe der Zahlen für die Notenberechnung
    $maxpunktzahl = Read-Host "Geben Sie die maximale Punkzahl ein";
    $erreichtepunktzahl = Read-Host "Geben Sie die von Ihnen erreichte Punktzahl ein";

#Berechnung der Note
    if ($maxpunktzahl -ge $erreichtepunktzahl -and $maxpunktzahl -gt 0) {
    
    }else { 
        Write-Host ""
        continue;
    }
    $note = ($erreichtepunktzahl / $maxpunktzahl) * 5 + 1;
#Note wird gerundet
    $gerundet = [math]::round($Note * 2.0) / 2.0;
    Write-Host "Ihre gerundete Note ist" $gerundet

$entscheidung = Read-Host "Möchten Sie eine weitere Note berechen? Ja oder Nein?"
} until($entscheidung -eq "Nein")