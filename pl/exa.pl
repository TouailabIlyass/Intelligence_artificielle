

min([X],X).
min([X|Q],X):- min(Q,M),X=<M.
min([X|Q],M):- min(Q,M),M<X.

max([X],X).
max([X|Q],X):- max(Q,M),X>=M.
max([X|Q],M):- max(Q,M),M>X.


mi([X],X).
mi([X|Q],M):- mi(Q,X1),X<X1,M is X,write(M).
mi([X|Q],M):- write(Q),write(X),mi(Q,M),M<X.


len([_],1).
len([_|Q],X):-len(Q,X1),X is X1+1.


somme([X],X,1).
somme([E|Q],M,S):-somme(Q,X,S1),M is E+X,S is S1+1.

moy(L,M):- somme(L,S,T),M is div(S,T).

aff(L):- min(L,A),max(L,B),moy(L,C),writef('le min est %t ',[A]),nl,writef('le max ext %t ',[B]),nl,writef('la moy est %t ',[C]).


elA(_,[],[]).
elA(X,[E|Q],L):- dif(X,E),elA(X,Q,L2),L=[E|L2];elA(X,Q,L).

exist(_,[],0).
exist(X,[E|Q],T):-dif(X,E),exist(X,Q,T);T is 1.

elD([],[]).
elD([E|Q],L):- elA(E,Q,L1),elD(L1,L2),L=[E|L2]. 



%somme2([],1).
%somme2([E|Q],R):-

pair(0).
pair(N):- N>1,plus(M,2,N),pair(M).

impair(1).
impair(N):-N>1,plus(M,2,N),impair(M).


pre1(X,Y,P):- nonvar(X),nonvar(Y),X=Y,P=X.
pre1(X,Y,P):- nonvar(X),nonvar(Y),X>0,Y>0,X>Y,X1 is X-Y,pre1(X1,Y,P).
pre1(X,Y,P):- nonvar(X),nonvar(Y),X>0,Y>0,Y>X,Y1 is Y-X,pre1(X,Y1,P).


app(X,[X | _]).
app(X,[E | Q]):- dif(E,X),app(X,Q).


pre2([],_).
pre2([X],L2):- app(X,L2).
pre2([X|L1],[X|L2]):- write(L2),pre2(L1,L2).
pre2([X|L1],[_|L2]):- write('ok'),write(L1),nl,pre2([X|L1],L2). 


enleve(X,[X|L],L).
enleve(X,[E|L],[E|L1]):-dif(X,E),enleve(X,L,L1).

tri([],[]).
tri(L,[X|L1]):-min(L,X),enleve(X,L,L2),tri(L2,L1).
