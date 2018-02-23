%Roy Xia
%101009419
%Question 3

lastEle(X,[X]).
lastEle(X,[_|Cdr]):-
	lastEle(X,Cdr).

gradeMap(L,R) :- 
	maplist(grade,L,R).

grade(Letter,a) :- between(80,100,Letter).
grade(Letter,b) :- between(70,79, Letter).
grade(Letter,c) :- between(60,69, Letter).
grade(Letter,d) :- between(50,59, Letter).
grade(Letter,f) :- between(0 ,49, Letter).

split([],_,[],[]).

split([Car|Cdr],Pivot,[Car|Cdr1],L2):-
	Car=<Pivot,
	split(Cdr,Pivot,Cdr1,L2).
	
split([Car|Cdr],Pivot,L1,[Car|Cdr2]):-
	Car>Pivot,
	split(Cdr,Pivot,L1,Cdr2).

	
nextto(X,Y,[X,Y|_]).
nextto(X,Y,[_|T]):-
	nextto(X,Y,T).

/*

Testing with given cases

?- lastEle(X,[how,are,you,today]).
X=today.

?-gradeMap([0, 16, 49, 55, 63, 78, 92], R).
R=[f,f,f,d,c,b,a]

?-split([4,7,1,8,2,9,3],5, L1, L2).
L1 = [4,1,2,3]
L2 = [7, 8, 9].
 
?-split([4,7,1,8,2,9,3],5, [4,1,2,3], [7, 8, 9]).
True.

?- nextto(a,b, [c,a,b,d]).
True.

?- nextto(a,b, [c,a,d,b]).
False
	
*/