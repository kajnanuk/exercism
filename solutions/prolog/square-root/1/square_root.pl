find(Number, Left, Right, SquareRoot):-
	calculate(Left, Right, Candidate),
    Candidate =:= Number,
    SquareRoot is ((Right + Left)//2).
find(Number, Left, Right, SquareRoot):-
	calculate(Left, Right, Candidate),
    Candidate > Number,
    NewRight is ((Right + Left)//2),
    find(Number, Left, NewRight, SquareRoot).
find(Number, Left, Right, SquareRoot):-
	calculate(Left, Right, Candidate),
    Candidate < Number,
    NewLeft is ((Right + Left)//2),
    find(Number, NewLeft, Right, SquareRoot).
calculate(Left, Right, Candidate):-
    Candidate is ((Right + Left)//2)**2.
square_root(1, 1).
square_root(Number, SquareRoot):-
    find(Number, 0, Number, SquareRoot). 