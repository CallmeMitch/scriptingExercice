param (
    [Parameter(Mandatory = $true)]
    [string]$Service
)


# Importation du module

Import-Module -Name "$PSScriptRoot\EmployeTools.psm1"


# Chargement des données

$donnees = Import-Csv -Path "C:\Users\jonas801\Desktop\employes.csv"


# Filtrage des employés

$employesFiltres = Filtrer-Employes -Donnees $donnees -Service $Service

if (-not $employesFiltres) {
    Write-Host "Aucun employé trouvé pour le service '$Service'." -ForegroundColor Yellow
    exit
}


# Affichage des employés filtrés

foreach ($employe in $employesFiltres) {
    Afficher-Employe -Employe $employe -Prefix "[Employé] "
}

Write-Host "`n=== Test Calculer-RatioSalaire ==="

$ratio = Calculer-RatioSalaire -Salaire1 4000 -Salaire2 2000
if ($ratio) { Write-Host "Ratio 4000 / 2000 = $ratio" }

