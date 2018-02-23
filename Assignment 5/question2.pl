%Roy Xia
%101009419
%Question 2

actor(jonny, depp, gender(male)).
actor(bruce, willis, gender(male)).
actor(glenn, close, gender(female)).
actor(orlando, bloom, gender(male)).
actor(jennifer, lawrence, gender(female)).
actor(sean, bean, gender(male)).
actor(angelina, jolie, gender(female)).
actor(keira, knightley, gender(female)).
actor(benedict, cumberbatch, gender(male)).
actor(james,mcavoy, gender(male)).
actor(robin, williams, gender(male)).
actor(emilia, clarke, gender(female)).
actor(ryan, reynolds, gender(male)).
actor(chris, pratt, gender(male)).
actor(karen, gillan, gender(female)).

movie(year(2003), title([pirates,of,the,carribean]), cast([actor(jonny, depp), actor(keira, knightley), actor(orlando, bloom)])).
movie(year(2014), title([guardians, of, the, galaxy]), cast([actor(chris, pratt), actor(karen,gillan) ])).
movie(year(1988), title([die,hard]), cast([actor(bruce, willis)])).
movie(year(2001), title([lord,of,the,rings]), cast([actor(orlando, bloom), actor(sean, bean)])).
movie(year(2016), title([xmen, apocalypse]), cast([actor(jennifer,lawrence), actor(james, mcavoy)])).
movie(year(2014), title([the,imitation,game]), cast([actor(benedict, cumberbatch), actor(keira, knightley)])).
movie(year(2012), title([the,hunger,games]), cast([actor(jennifer,lawrence)])).
movie(year(2016), title([deadpool]), cast([actor(ryan, reynolds)])).

%Query answers for verification

% a.) ?- movie(year(Y), T,_), Y < 2010.

% pirates of the carribean ; lord of the rings; false

% b.) ?- movie(_,title(T),_), member(of,T), member(the,T).

% pirates of the carribean ; guardians of the galaxy; lord of the rings; false

% c.) ?- movie(_,title(T1), cast(X1)), movie(_,title(T2), cast(X2)), member(actor(X,Y),X1), member(actor(X,Y),X2), T1 \=T2.

% pirates of the carribean ; pirates of the carribean; lord of the rings; xmen apocalypse ; the imitation game ; the hunger game ; false 

% d.) ?- movie(_,title(T), cast(X)), member(actor(chris,_), X).

% guardians of the galaxy; false

% e.) ?- actor(X,Y,gender(female)).

% glenn close; jennifer lawrence; angelina jolie; keira knightley; emilia clarke; karen gillian

% f.) ?- movie(_,title(T),cast(X)), member( actor( sean,bean),X).

% lord of the rings; false

% g.) ?- movie(_,title(T1), cast(X1)), movie(_,title(T2), cast(X2)), member(actor(X,Y),X1), member(actor(X,Y),X2), T1 \=T2.

% same as c.

% h.) ?- movie(year(Y),title(T),_),  not((movie(year(Y2),title(T2),_), Y > Y2)).

% die hard

% i.) ?- actor(First,Last,Gender), not((movie(year(Y),title(T),cast(X)), member(actor(First,Last),X))).

% glenn close ; angelina jolie ; robin williams ; emilia clarke ; false

