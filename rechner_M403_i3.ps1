do {
Function Get-Input([string] $message, [string] $title, [string] $defaultText)
{
    Add-Type -AssemblyName Microsoft.VisualBasic
	return [Microsoft.VisualBasic.Interaction]::InputBox($message, $title, $defaultText)   
}

#Hauptprogramm
cls
Write-Host Das Skript wurde gestartet...
[Double]$a = ""
[Double]$a = get-input "Geben Sie bitte Ihr Gewicht ein: " "BMI Rechner" "zb. 70"


[Double]$b = get-input "Geben Sie nun bitte Ihre Körpergrösse ein: " "BMI Rechner" "zB. 1.87"

[Double]$c = ""

[Double]$c = $a / ($b * $b)
$d = “{0:n2}” –f $c

[System.Windows.Forms.MessageBox]::Show("Ihr BMI beträgt $d","BMI Rechner",0)

if($d -le 18.5) {
[System.Windows.Forms.MessageBox]::Show("Sie sind untergewichtig","BMI Rechner",0)
} elseif($d -gt 25) {
[System.Windows.Forms.MessageBox]::Show("Sie sind übergewichtig","BMI Rechner",0)
} else {
[System.Windows.Forms.MessageBox]::Show("Sie sind normalgewichtig","BMI Rechner",0)
}
$end = get-input "Wollen Sie weitere Berechnungen durchführen" "BMI Rechner" "Y/N?"

} until ($end -eq "N")