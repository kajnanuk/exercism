"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""


EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


#TODO (student): Remove 'pass' and complete the 'bake_time_remaining()' function below.
def bake_time_remaining(elapsed_bake_time: int):
    """Calculate the bake time remaining.

    Parameters:
        elapsed_bake_time (int): The baking time already elapsed.

    Returns:
        int: The remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    remaining = EXPECTED_BAKE_TIME - elapsed_bake_time 
    return remaining if remaining > 0 else 0


def preparation_time_in_minutes(number_of_layers: int):
    """Calculate the preparation time in minutes.

    Parameters:
        number_of_layers (int): the number of layers to add to the lasagna

    Returns:
        int: the preparation time needed (in minutes)

    Function that calculates preparation time in minutes from the number of layers.
    """
    return PREPARATION_TIME * number_of_layers



def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the elapsed time in minutes.

    Parameters:
        number_of_layers (int): the number of layers to add to the lasagna
        elapsed_bake_time (int): time already elapsed baking 

    Returns:
        int: the total elapsed time in minutes

    Function that calculates total elapsed time in minutes from the number of layers
    and elapsed time baking.
    """
    return elapsed_bake_time + preparation_time_in_minutes(number_of_layers)
