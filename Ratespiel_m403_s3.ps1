$isRunning = $true

function optionMenu(){
    Write-Host "BITTE AUSWÄHLEN:"
    Write-Host "   l) Leichtes Spiel"
    Write-Host "   m) Mittleres Spiel"
    Write-Host "   s) Schwieriges Spiel"
    Write-Host "   q) Beenden"
}

function spiel($max){ 
    $raten = $true

    
    $zahl = Get-Random -Minimum 1 -Maximum ($max+1)

    

   
    for($versuche = 0; $raten; $versuche++){
        
      
        Write-Host -NoNewline "Bitte raten Sie die Zahl zwischen 1 und $max "
        Write-Host -ForegroundColor Red "$versuche" 
        $eingabe = read-host

        $out = 0 
        if([int32]::Tryparse($eingabe, [ref] $out)) {
            if($eingabe -gt $zahl) {
                "Ihre Eingabe war zu hoch."
            } elseif($eingabe -lt $zahl) {
                "Ihre Eingabe war zu niedrig."
            } elseif ($eingabe -eq $zahl) {
                $raten = $false
            } else { 
                Write-Warning "Ungültige Eingabe"
            }
        }else {
            Write-Warning "Ungültige Eingabe: $eingabe"
            clear
        }
    }

    Write-Host -NoNewline "Glückwunsch! Sie haben gewonnen in" 
    Write-Host -NoNewline -ForegroundColor Red " $versuche " 
    Write-Host "Versuchen!"
}

while($isRunning){
    clear 
    optionMenu

    $eingabe = read-host -Prompt "> "
    $eingabe = $eingabe.ToLower();

    switch($eingabe){

        "l" { 
            Write-Host "Leichtes Spiel gestarten"
            spiel(10)
            $isRunning = $false
        }"m"{ 
            Write-Host "Mittleres Spiel gestartet"
            spiel(100) 
            $isRunning = $false
        }"s"{ 
            Write-Host "Schwieriges Spiel gestartet"
            spiel(1000)
            $isRunning = $false
        }"q"{ 
            Write-Warning "Auf Wiedersehen"3
            $isRunning = $false 
        }default{
            Write-Warning "Ich verstehe dich nicht :-("
            sleep 3
        }
    }
}
