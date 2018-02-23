%Roy Xia
%101009419
%Question 5

list([]).
list([_|T]):-
	list(T).
	
treeFlat([],[]).
treeFlat([H|T],F):-
	treeFlat(H,NewL),
	treeFlat(T,NewLl),
	append(NewL,NewLl,F).	
treeFlat(L,[L]).

listSum([],0).
listSum([H|T],R):-
	listSum(T, SumT),
	R is H + SumT.

treeSum([],0).
treeSum(L,S):-
	treeFlat(L, NewL),
	listSum(NewL, S).

/* 
Testing with given cases

?-list([1,2,3]). → True.

?-list(hello). → False.

?- treeFlat([1,[2,3],[[4,[5]],6]],[1,2,3,4,5,6]). → True.

?- treeFlat([1,[2,3],[[4,[5]],6]], L). → L = [1,2,3,4,5,6]

?- treeSum([[1,[2,3]],4,[5,6,[7]]], S). → 28

*/
