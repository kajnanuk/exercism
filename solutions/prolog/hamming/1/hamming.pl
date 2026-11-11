hamming_distance(Str1, Str2, Dist):-
    atom_codes(Str1, Chars1), 
    atom_codes(Str2, Chars2),
    length(Chars1, L1),
    length(Chars2, L2),
    L1 =:= L2,
    calculate(Chars1, Chars2, Dist).

calculate([], [], 0).
calculate([A|AT], [B|BT], D):-
    A =:= B,
    calculate(AT, BT, D).

calculate([A|AT], [B|BT], D):-
    A =\= B,
    calculate(AT, BT, Dprev),
    D is Dprev + 1.