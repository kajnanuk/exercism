value("black", 0).
value("brown", 1).
value("red", 2).
value("orange", 3).
value("yellow", 4).
value("green", 5).
value("blue", 6).
value("violet", 7).
value("grey", 8).
value("white", 9).
value([A, B|_], X):-
    value(A, X1),
    value(B, X2),
    X is X1*10 + X2.