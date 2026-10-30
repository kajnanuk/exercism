string_reverse(S, Reversed) :-
string_chars(S, Slist),
reverse(Slist, Reversedlist),
string_chars(Reversed, Reversedlist).