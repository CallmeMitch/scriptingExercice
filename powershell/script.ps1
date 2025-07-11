
### CHANGER LE CHEMIN POUR L'ADAPTER AU SCRIPT
$donnees = Import-Csv -Path C:\Users\jonas801\Desktop\employes.csv
Write-Output($donnees)


## Étape 2 

Write-Output("--- NOM DES EMPLOYES ---")
## Affiche uniquement le nom des employés.
Write-Output($donnees.nom)

Write-Output("--- AGE MOYEN ---")
## Afficher l'age moyen des employés.
Write-Output(([Int]$donnees.Age[0]+[Int]$donnees.Age[1]+[Int]$donnees.Age[2]+[Int]$donnees.Age[3]+[Int]$donnees.Age[4])/5)


Write-Output("--- NOM DES EMPLOYES DANS LE SERVICE INFORMATIQUE ---")
## Afficher uniquement les employés du service informatique.
foreach ($employe in $donnees) {
    if ($employe.service -eq "Informatique") {
        Write-Output $employe.nom
    }
}


## Étape 3 

Write-Output("---  AFFICHER UNIQUEMENT LES EMPLOYEES DE PLUS DE 40 ANS ---")
## Affichez les employés de plus de 40 ans

foreach ($employe in $donnees) {
    if ($employe.age -le 35) {
        Write-Output "$($employe.nom) est jeune"
    }
    elseif ($employe.age -ge 36 -and $employe.age -le 49) {
        Write-Output "$($employe.nom) est intermédiaire."
    }
    elseif ($employe.age -ge 50) {
        Write-Output "$($employe.nom) est vieux !"
    }
}


## Étape 4 
Write-Output("---  AFFICHER LES EMPLOYES EST LEUR SERVICE AVEC LEUR SALAIRE ---")

foreach ($employe in $donnees) {
    Write-Output("$($employe.Nom) travaille dans le service $($employe.Service) avec un salaire de $($employe.Salaire).")
}

## Étape 5
Write-Output("--- UTILISATION DU SWICH ---")
foreach ($employe in $donnees) {
    switch ($employe.service) {
        "Informatique"   { Write-Output "$($employe.nom) → Technique" }
        "RH"             { Write-Output "$($employe.nom) → Support" }
        "Comptabilité"   { Write-Output "$($employe.nom) → Support" }
        "Marketing"      { Write-Output "$($employe.nom) → Client" }
        default          { Write-Output "$($employe.nom) → Autre" }
    }
}


## Étape 6 — Rapport final
Write-Output("---  ---")

# Initialisation des variables
$totalEmployes = $donnees.Count
$totalSalaire = 0
$maxSalaire = 0
$employeMaxSalaire = ""

# Parcours des employés pour les calculs
foreach ($employe in $donnees) {
    $totalSalaire += $employe.salaire

    if ($employe.salaire -gt $maxSalaire) {
        $maxSalaire = $employe.salaire
        $employeMaxSalaire = $employe.nom
    }
}

# Calcul du salaire moyen
$salaireMoyen = 0
if ($totalEmployes -gt 0) {
    $salaireMoyen = [math]::Round($totalSalaire / $totalEmployes, 2)
}

# Affichage du rapport final
Write-Output "------ RAPPORT FINAL ------"
Write-Output "Nombre total d’employés : $totalEmployes"
Write-Output "Salaire moyen : $salaireMoyen €"
Write-Output "Employé avec le plus haut salaire : $employeMaxSalaire ($maxSalaire €)"
