string_reverse(S, Reversed).
string_reverse(S, Reversed) :-
string_chars(S, Slist),
my_reverse(Slist, Reversedlist),
string_chars(Reversed, Reversedlist).

my_reverse([], []).
my_reverse([Head | Tail], Reversedlist) :-
my_reverse(Tail, ReversedTail),
my_append(ReversedTail, [Head], Reversedlist).

my_append([], List2, List2).
my_append([Head | Tail], List2, [Head | AppendedTail]):-
my_append(Tail, List2, AppendedTail).