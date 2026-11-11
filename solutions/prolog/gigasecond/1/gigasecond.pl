:- use_module(library(date_time)).
add_gigasecond(date(A, B, C, D, E, F, G, H, I), date(AA, BB, CC, DD, EE, F2, G, H, I)):-
    datetime_add(datetime(A, B, C, D, E, F),[
        days(11574),
        hours(1),
        mins(46),
        secs(40)
    ], datetime(AA, BB, CC, DD, EE, FF)), 
    F2 is float(FF).