%Roy Xia
%101009419
%Question 1

 
male(john).%gd
male(steve).%b
male(roy).%d
male(bob).%u
male(rick).%s

female(geo).%gm
female(mona).%m
female(sam).%s
female(hillary).%a
female(tina).%d

father(roy,rick).
father(roy,steve).
father(john,roy).
father(john,bob).

mother(mona,sam).
mother(mona,tina).
mother(geo,mona).
mother(geo,hillary).
mother(geo,roy).

married(roy, mona).
married(john, geo).

%functions

parent(X,Y):- 
	father(X,Y);
	mother(X,Y).

different(X,Y):- X\=Y.

is_mother(X):-
	mother(X,_).

is_father(X):-
	father(X,_).
	
aunt(X,Y):-
	female(X), 
	parent(G,X),
	parent(P,Y),
	parent(G,P),
	not(parent(X,Y)).

uncle(X,Y):-
	male(X), 
	parent(G,X),
	parent(P,Y),
	parent(G,P),
	not(parent(X,Y)).
	
sister(X,Y):-
	female(X),
	mother(M,X),
	mother(M,Y).
	
brother(X,Y):-
	male(X),
	father(F,X),	
	father(F,Y).
	
grandfather(X,Y):-
	male(X),
	parent(X,P),
	parent(P,Y).
	
	
grandmother(X,Y):-
	female(X),
	parent(X,P),
	parent(P,Y).
	
ancestor(X,Y):-
	parent(X,Y);
	parent(X,Z),
	ancestor(Z,Y).
		
/*

Testing for each case

?- parent(mona,tina).
true.

?- different(mona,tina).
true.

?- different(mona,mona).
false.

?- is_mother(mona).
true.

?- is_mother(roy).
false.

?- is_father(mona).
false.

?- is_father(roy).
true.

?- brother(rick,steve).
true.

?- sisters(sam,tina)
true.

?- uncle(bob,rick).
true.

?- uncle(bob,rick).
true.

?- grandfather(john,rick).
true.

?- grandmother(geo,steve).
true.

?- ancestor(geo,tina).
true.

*/

