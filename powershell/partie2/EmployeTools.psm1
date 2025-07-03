
# Fonction : Afficher-Employe

function Afficher-Employe {
    param (
        [Parameter(Mandatory = $true)]
        $Employe,

        [string]$Prefix = ""
    )
    Write-Output "$Prefix$($Employe.Nom) travaille dans le service $($Employe.Service) avec un salaire de $($Employe.Salaire) €."
}


# Fonction : Filtrer-Employes

function Filtrer-Employes {
    param (
        [Parameter(Mandatory = $true)]
        $Donnees,

        [Parameter(Mandatory = $true)]
        [string]$Service
    )
    return $Donnees | Where-Object { $_.Service -eq $Service }
}


# Fonction : Calculer-RatioSalaire
function Calculer-RatioSalaire {
    param (
        [float]$Salaire1,
        [float]$Salaire2
    )
    try {
        if ($Salaire2 -eq 0) {
            throw "Erreur : Division par zéro non autorisée."
        }
        return ($Salaire1 / $Salaire2)
    }
    catch {
        Write-Error $_
    }
}
