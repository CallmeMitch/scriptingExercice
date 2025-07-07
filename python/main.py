# main.py

import argparse
from utils.helphers import capitalize_all, add_numbers, log_execution

# Fonction décorée pour test
@log_execution
def decorated_hello():
    print("Fonction décorée exécutée.")

def main():
    parser = argparse.ArgumentParser(description="Menu interactif avec plusieurs options.")
    
    subparsers = parser.add_subparsers(dest="command", required=True, help="Commande à exécuter")

    # Commande : capitalize
    parser_cap = subparsers.add_parser("capitalize", help="Mettre une phrase entièrement en majuscules")
    parser_cap.add_argument("text", type=str, help="Texte à mettre en majuscules")

    # Commande : add
    parser_add = subparsers.add_parser("add", help="Additionner une liste de nombres")
    parser_add.add_argument("numbers", nargs="+", type=float, help="Nombres à additionner")

    # Commande : testlog
    subparsers.add_parser("testlog", help="Tester la fonction décorée")

    # Parse args
    args = parser.parse_args()

    # Exécution des commandes
    if args.command == "capitalize":
        print(capitalize_all(args.text))

    elif args.command == "add":
        print(f"Somme: {add_numbers(args.numbers)}")

    elif args.command == "testlog":
        decorated_hello()

if __name__ == "__main__":
    main()
