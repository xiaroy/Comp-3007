%Roy Xia
%101009419
%Question 4

myAppend([],L2,L2).
myAppend([H|L1],L2,[H|L]) :- myAppend(L1,L2,L).

myFirst(X,L):- myAppend(_,[X|_],L).

myLast(X,L):- myAppend(_,[X],L).

nextto(X,Y,L):-
	myAppend(_,[X,Y|_],L).
	
myReverse([],[]).
myReverse([H|T],L):-
	myReverse(T,L2),
	myAppend(L2,[H],L).
	
/*

Testing Q4

?- myAppend([a,b],[c,d],L).
L = [a,b,c,d].

?- myFirst(a,[a,b,c,d])
true;

?- myLast(d,[a,b,c,d])
true;

?- nextto(a,b,[a,b,c,d)
true;

?- myReverse([a,b],[b,a])
true;

*/