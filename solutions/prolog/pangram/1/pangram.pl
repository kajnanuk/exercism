pangram(Sentence):-
    downcase_atom(Sentence, Downcased),
    atom_codes(Downcased, Codes),
    forall(between(97, 122, Code), (memberchk(Code, Codes))).
