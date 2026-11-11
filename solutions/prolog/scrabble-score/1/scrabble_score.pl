map(X, Y):-
    downcase_atom(X, X1),
    point(X1, Y).
point(d, 2).
point(g, 2).
point(b, 3).
point(c, 3).
point(m, 3).
point(p, 3).
point(f, 4).
point(h, 4).
point(v, 4).
point(w, 4).
point(y, 4).
point(k, 5).
point(j, 8).
point(x, 8).
point(q, 10).
point(z, 10).
point(_, 1).
reduce(X, Y, Z):-
    Z is X+Y.
score(Word, Score):-
    string_chars(Word, Chars),
    maplist(map, Chars, Chars_mapped),
    foldl(reduce, Chars_mapped, 0, Score).
    