# scriptingExercice

## Consignes générales
Créer un script gestion.sh qui se comporte comme une mini-interface en ligne de commande :

Accepte des arguments en ligne de commande (ex: ./gestion.sh -v pour afficher la version)

Lance un menu interactif via une boucle while + read + case

Propose plusieurs actions réalisables par l’utilisateur

## Fonctionnalités attendues
Le script devra permettre :

Lister tous les fichiers du dossier courant

Créer un nouveau fichier (nom demandé à l’utilisateur)

Supprimer un fichier (avec vérification d’existence)

Afficher le contenu d’un fichier (avec contrôle préalable)

Quitter le script

Utiliser :

if, else, test -e -f

case pour les options

Boucle while true avec read

## Compléments
Ajouter un argument -v ou --version qui affiche une version du script

Ajouter un argument -h ou --help avec un message d’aide

Ajouter un compteur d’actions exécutées

Implémenter un retour au menu automatique après chaque action

Logger les actions dans un fichier log.txt
