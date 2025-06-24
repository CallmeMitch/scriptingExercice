#!/bin/bash

## Les variables
VERSION=1.1.0
ITERATION=0
POSITION=$(pwd)
OPTIONS=""

bool=true 

## Les fonctions

listeFichiersDuRepCourant() {
    echo "Voici les fichiers du répertoire courant."
    ls "$POSITION"
}

makeNewFile(){
    echo "Quel est le nom du fichier?"
    read -r nom
    touch "$nom"
}

removeFile(){
    echo "Nom du fichier: "
    read -r fileName
    if [ -e "$fileName" ]; then
        rm "$fileName"
    else
        echo "Le fichier n'existe pas."
    fi
}

readFileContent(){
    read -rp "Nom du fichier: " fileNameToRead
    if [ -e "$fileNameToRead" ]; then
        less "$fileNameToRead"
    else
        echo "Aucun fichier n'existe."
    fi
}

quitScript(){
    bool=false
}

iterationFunction(){
    ITERATION=$((ITERATION + 1))
    echo "Itération n°$ITERATION"
    echo ""
    echo -e "À l'itération n°$ITERATION, l'option $OPTIONS a été choisie." >> log.txt
}

functionCaller(){
    case $OPTIONS in
        1) listeFichiersDuRepCourant; iterationFunction ;;
        2) makeNewFile; iterationFunction ;;
        3) removeFile; iterationFunction ;;
        4) readFileContent ;;
        5) quitScript ;;
        *) echo "Veuillez sélectionner un chiffre entre 1 et 5." ;;
    esac
}

## Les options. 

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Usage : $0 [OPTIONS]"
    echo ""
    echo "Options disponibles :"
    echo "  -h, --help                  Affiche cette aide."
    echo "  -v, --version               Affiche la version actuelle du script."
    echo "  -i, --interactive-mode      Menu interactif."
    exit 0
fi

if [ "$1" = "-v" ] || [ "$1" = "--version" ]; then
    echo "$VERSION"
    exit 0
fi

if [ "$1" = "-i" ] || [ "$1" = "--interactive-mode" ]; then
    while [ "$bool" = true ]; do
        echo "1.  Lister les fichiers du répertoire courant."
        echo "2.  Créer un nouveau fichier."
        echo "3.  Supprimer un fichier."
        echo "4.  Lire le contenu d'un fichier."
        echo "5.  Quitter le script."

        read -rp "Veuillez rentrer un numéro entre 1 et 5: " OPTIONS
        echo ""
        functionCaller
        echo ""
        echo " --- FIN --- " 
        echo ""
    done
fi
