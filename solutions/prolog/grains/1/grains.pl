square(SquareNumber, Value):-
    SquareNumber > 0, SquareNumber < 65,
    Previous is SquareNumber - 1,
    Value is 2 ** Previous.

total(Value):-
    Value is 2 ** 64 - 1.
