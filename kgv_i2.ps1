do {
[int]$A = 0
[int]$B = 0
[int]$teiler = 0
[int]$max = 0
[int]$kgv = 0

Function Get-Input([string] $message, [string] $title, [string] $defaultText)
{
    Add-Type -AssemblyName Microsoft.VisualBasic
	return [Microsoft.VisualBasic.Interaction]::InputBox($message, $title, $defaultText)   
}

$A = Get-Input "Geben Sie ihre erste ganze Zahl ein" "KGV"
$B = Get-Input "Geben Sie ihre zweite ganze Zahl ein" "KGV"

if($A -gt $B){   
    $max = $A;
}else{
    $max = $B;
}

$teiler = 1;
While ($teiler -le $max) {
    if($A % $teiler + $B % $teiler -eq 0){
        $kgv = $teiler;
    }
    $teiler = $teiler + 1;
}

$endresultat = $A * $B / $kgv
[System.Windows.Forms.MessageBox]::Show("Das kleinste gemeinsame Vielfache ist $endresultat","GGT")
$end = Get-Input "Möchten Sie eine weitere Berechnung durchführen Y/N?" "KGV"
} until ($end -eq "N")