# helpers.py

def capitalize_all(text: str) -> str:
    """
    Met en majuscules toutes les lettres d'une phrase.
    """
    return text.upper()


def add_numbers(numbers: list) -> float:
    """
    Prend une liste de nombres et retourne la somme.
    """
    return sum(numbers)


def log_execution(func):
    """
    Décorateur qui affiche un message avant et après l'exécution d'une fonction.
    """
    def wrapper(*args, **kwargs):
        print(f"[LOG] Début de l'exécution de '{func.__name__}'")
        result = func(*args, **kwargs)
        print(f"[LOG] Fin de l'exécution de '{func.__name__}'")
        return result
    return wrapper
