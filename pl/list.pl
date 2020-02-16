
afficher([]).
afficher([E|Q]):-write(E),nl,afficher(Q).

appartient(X,[X | _]).
appartient(X,[E | Q]):- dif(E,Q),appartient(X,Q).


empiler(X,L,[X|L]).


depiler([_|L],L).


enfiler(X,[],[X]).
enfiler(X,[Y|L1],[Y|L2]):-enfiler(X,L1,L2).


defiler([_],[]):-!.
defiler([X|L1],[X|L2]):-defiler(L1,L2).

vide(L):- L=[].


concat([],L,L).
concat(L,[],L).
concat([X|L1],L2,[X|L3]):- concat(L1,L2,L3).
%concatener(L1,[X|L2],L3):- enfiler(X,L1,L4),concatener(L4,L2,L3).
concatener(L1,L2,L3):- var(L1),nonvar(L2),nonvar(L3),defiler(L2,L22),defiler(L3,L32),concatener(L1,L22,L32).


longueur([],0).
longueur([_|X],L):-longueur(X,L1),L is L1+1.


indice(X,[X|_],0).
indice(X,[Y|L],N):- dif(X,Y),indice(X,L,N1),N is N1+1.

insertPos(_,0,L1,L2):-concat(L1,L2).
insertPos(X,P,L1,L2):- P>0,P1 is P-1,empiler(E,Q,L2),insertPos(X,P1,Q,L2).
