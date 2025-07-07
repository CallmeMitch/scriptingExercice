#  Script Python CLI – Scripting Exercice

##  Sommaire

- [ Objectif](#-objectif)
- [ Installation de l’environnement avec Poetry](#️-installation-de-lenvironnement-avec-poetry)
- [ Exécution du script](#️-exécution-du-script)


---

## Objectif

Ce projet est un petit script Python en ligne de commande (CLI) conçu pour l'entraînement à la programmation et à l'utilisation d'outils modernes comme **Poetry**.

Fonctionnalités incluses :

-  **Mettre une phrase en majuscules**
-  **Additionner une liste de nombres**
-  **Afficher un log avant/après l'exécution d'une fonction via un décorateur**

---

## Installation de l’environnement avec Poetry

### 1. Cloner le dépôt

```bash
git clone <url-du-depot>
cd <nom-du-dossier>
```

--- 

## Exécution du script

### Mettre tous les caractères d'une chaine de caractère en MAJUSCULE. 
``` python3
python3 main.py capitalize "bonjour le monde"
```

### Calculer la somme de plusieurs entier. 
``` python3
python3 main.py add 10 20 30.5
```

### Execution d'une fonction décorée avec log.

``` python3
python3 main.py testlog
```
---

