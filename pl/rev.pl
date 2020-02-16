
afficher([]).
afficher([E|Q]):-write(E),nl,afficher(Q).
apt([X|_],X).
apt([E|Q],X):-dif(E,X),apt(Q,X).
emp(X,L,[X|L]).

dep([_|Q],Q).

enf(X,[],[X]).
enf(X,[Y|L1],[Y|L2]):-write(Y),enf(X,L1,L2).

def([_],[]).
def([X|L],[X|L2]):-def(L,L2).

vide([]).

cnc([],L,L).
cnc(L,[],L).
cnc([X|L1],L2,[X|L3]):- cnc(L1,L2,L3).

long([],0).
long([_|Q],X):-long(Q,X1),X is X1+1.


indice(X,[X|_],0).
indice(X,[E|Q],N):- dif(X,E),indice(X,Q,N1),N is N1+1.

insPos(X,0,L,[X|L]).
insPos(X,P,[E|Q],L2):-P>0,P1 is P-1,insPos(X,P1,Q,L),L2=[E|L].

remp(_,_,[],[]).
remp(X1,X2,[E|Q],L2):-dif(X1,E),remp(X1,X2,Q,L),L2=[E|L];
X1=E,remp(X1,X2,Q,L1),L2=[X2|L1].

inv([E],E).
inv([E|Q],[Q1|E]):- inv(Q,Q1).

in([],[]).
in([E|Q],L2):-in(Q,L),cnc(L,[E],L2).

