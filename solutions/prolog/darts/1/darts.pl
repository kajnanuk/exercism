radius(X, Y, Radius):-
    X2 is X**2,
    Y2 is Y**2,
    Sum is X2+Y2,
    sqrt(Sum, Radius).

score(X, Y, 10):-
    radius(X, Y, Radius),
    Radius =< 1, !.

score(X, Y, 5):-
    radius(X, Y, Radius),
    Radius =< 5, !.

score(X, Y, 1):-
    radius(X, Y, Radius),
    Radius =< 10, !.

score(_, _, 0).