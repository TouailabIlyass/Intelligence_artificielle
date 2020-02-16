

appartient(X,[X|_]).
appartient(X,[_|Q]):- appartient(X,Q).


empiler(X,L,[X|L]).


depiler([],[]).
depiler([_|Q],Q).
enfiler(X,[],[X]).
enfiler(X,[E|Q],[E|Q1]):- enfiler(X,Q,Q1).

enf(X,[],[X]).
enf(X,[E|Q],L):- enf(X,Q,L1),L=[E|L1].


defiler([_],[]).
defiler([X|L1],[X|L2]):- defiler(L1,L2).

def([_],[]).
def([X|L1],L):-def(L1,L2),L=[X|L2].

vide(L):- L=[].


cnc([],L,L).
cnc(L,[],L).
cnc([X|L1],L2,[X|L3]):-cnc(L1,L2,L3).


longueur([],0).
longueur([_|Q],X):-longueur(Q,X1),X is X1+1.

indice(X,[X|_],0):-!.
indice(X,[E|Q],N):- dif(X,E),indice(X,Q,N1),N is N1+1.


remp(_,_,[],[]):-!.
remp(X1,X2,[E|Q],L2):- dif(X1,E),remp(X1,X2,Q,L),L2=[E|L];
X1=E,remp(X1,X2,Q,L1),L2=[X2|L1].

inserPos(X,0,L,[X|L]).
inserPos(X,P,[E|Q],L2):-P>0,P1 is P-1,inserPos(X,P1,Q,L),L2=[E|L].

inverse([E],E).
inverse([E|Q],[Q1|E]):- inverse(Q,Q1).

inv([E],E).
inv([E|Q],[L|E]):-inv(Q,L).


lastElem([E],E).
lastElem([_|Q],X):-lastElem(Q,X).


suppA(_,[],[]).
suppA(X,[E|Q],L2):-dif(X,E),suppA(X,Q,L),L2=[E|L];suppA(X,Q,L2).


suppElem(X,P,[E|Q],L2):-P>0,P1 is P-1,suppElem(X,P1,Q,L),L2=[E|L].

saisirList([1],1).
saisirList([N|L],N):-N>1,N1 is N-1,saisirList(L,N1).

%saisirListInv([1],1),
%saisirListInv(L,N):-enf(N,L,L1),N1 is N-1,saisirListInv(L,N1).


min([X],X).
min([X|Q],X):-min(Q,M),X=<M.
min([X|Q],M):-min(Q,M),M<X.


enleve(X,[X|L],L).
enleve(X,[E|L],[E|L1]):-dif(X,E),enleve(X,L,L1).

tri([],[]).
tri(L,[X|L1]):-min(L,X),enleve(X,L,L2),tri(L2,L1).


fusion(L,[],L).
fusion([],L,L).
fusion(L1,L2,L3):-min(L1,X),min(L2,Y),X=Y,enleve(X,L1,L11),enleve(X,L2,L22),fusion(L11,L22,L4),L3=[X|L4].


bulle([E|L1],L2):- L1





