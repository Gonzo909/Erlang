-module(minmax).
-export([start/0]).

start()->
    Numbers = [3,45,10,15,9,7],
    max_min(Numbers).

min_list([])-> 0;
min_list([H|T])->
    Min = fun(A, B) when A =< B -> A;
            (_A, B)             -> B end,
    lists:foldl(Min, H, T).

max_list([]) -> 0;
max_list([H|T]) ->
    Max = fun(A, B) when A > B -> A;
            (_A, B)            -> B end,
    lists:foldl(Max, H, T).

max_min(L) ->
    Minimum = min_list(L),
    Maximum = max_list(L),
    [Minimum|Maximum].