latest(Scores, Latest):-
    reverse(Scores, [Latest|_]).
better(X, Y, X):-
    X>=Y.
better(_, Y, Y).
personal_best(Scores, Best):-
    foldl(better, Scores, 0, Best).
resolve(Sorted, Sorted):-
    length(Sorted, Length),
	Length =< 2.
resolve([A, B, C|_], [A, B, C]).
    
personal_top_three(Scores, TopThree):-
    sort(0, @>=, Scores, Sorted),
    resolve(Sorted, TopThree).
