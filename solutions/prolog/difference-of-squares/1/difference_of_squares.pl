sum(1, 1).
sum(N, Result):-
    N_1 is N-1,
    sum(N_1, Result_1),
    Result is Result_1 + N.

square_of_sum(N, Result):-
	sum(N, Result_sum),
	Result is Result_sum * Result_sum.

sum_of_squares(1, 1).
sum_of_squares(N, Result):-
    N_1 is N-1,
    sum_of_squares(N_1, Result_1),
    Result is Result_1 + (N * N).

difference(N, Result):-
    square_of_sum(N, Result_1),
    sum_of_squares(N, Result_2),
    Result is Result_1 - Result_2.
