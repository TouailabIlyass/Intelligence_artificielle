


min([E],E).
min([E|Q],E):- min(Q,X),E=<X.
min([E|Q],X):- min(Q,X),X<E.

max([E],E).
max([E|Q],E):- max(Q,X),E>=X.
max([E|Q],X):- max(Q,X),X>E.

somme_et_longeur([X],X,1).
somme_et_longeur([E|Q],M,S):-somme_et_longeur(Q,X,S1),M is E+X,S is S1+1.

moy(L,M):- somme_et_longeur(L,S,T),M is div(S,T).

afficheMinMaxMoy(L):- min(L,A),max(L,B),moy(L,C),writef('le min est: %t ',[A]),nl,writef('le max est: %t ',[B]),nl,writef('la Moy est: %t ',[C]).

dep([],[],_).
dep([E],[],E).
dep([E|Q],Q,E).

def([E],[],E).
def([X|L],[X|L2],N):-def(L,L2,N).


palindrome([]).
palindrome(L):- dep(L,_,X),def(L,L2,Y),X=Y,dep(L2,L3,X),palindrome(L3).


elelement(_,[],[]).
elelement(X,[E|Q],L):- dif(X,E),elelement(X,Q,L2),L=[E|L2];elelement(X,Q,L).


eliminerdoublons([],[]).
eliminerdoublons([E|Q],L):- var(L),elelement(E,Q,L1),eliminerdoublons(L1,L2),L=[E|L2]. 


