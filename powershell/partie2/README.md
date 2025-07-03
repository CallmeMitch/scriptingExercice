Affiche tous les employés du service Informatique avec le préfixe [Employé].
.\rapport-employes.ps1 -Service "Informatique"



Test avec un autre service existant
.\rapport-employes.ps1 -Service "Marketing"
Affiche tous les employés du service Marketing.



Test avec un service inexistant
.\rapport-employes.ps1 -Service "Finance"
Affiche le message :
Aucun employé trouvé pour le service 'Finance'.


Test d'affichage individuel d’un employé (via console ou script test)
Dans une console PowerShell (ou script temporaire), après avoir importé le module :
Import-Module .\EmployeTools.psm1
$employe = [PSCustomObject]@{ Nom = "Claire"; Service = "RH"; Salaire = 3200 }
Afficher-Employe -Employe $employe -Prefix "[Test] "


Test de la fonction Filtrer-Employes
Import-Module .\EmployeTools.psm1
$donnees = Import-Csv -Path "C:\Users\jonas801\Desktop\employes.csv"
$rh = Filtrer-Employes -Donnees $donnees -Service "RH"
$rh | ForEach-Object { $_.Nom }

Affiche uniquement les noms des employés du service RH.
Test de la fonction Calculer-RatioSalaire — cas normal
Calculer-RatioSalaire -Salaire1 4500 -Salaire2 1500


Test de Calculer-RatioSalaire — division par zéro
Calculer-RatioSalaire -Salaire1 4500 -Salaire2 0

