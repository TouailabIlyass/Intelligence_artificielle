pere(ahmed,anas).

fils(anas,ahmed):- pere(ahmed,anas).

max(X,Y,X):- write('ok'),X>=Y.
max(X,Y,Y):- X<Y.
max3(X,Y,Z,M):- max(X,Y,M1),max(M1,Z,M).


ecrit(0).
ecrit(N):- N>0,N1 is N-1,ecrit(N1),write(N),nl.


som(1,1).
som(N,X):- N>0,N1 is N-1,som(N1,Y),X is Y+N.

fact(1).
fact(N,X):- N>0,N1 is N-1,fact(N1,Y),X is Y*N.

puis(X,1,X).
puis(X,N,Z):- N>0,N1 is N-1,puis(X,N1,Z1),Z is Z1*X.




bet(X,Y,Z):- X<Y,Z=X.
bet(X,Y,Z):- X==Y,Z=X,!.
bet(X,Y,Z):- X<Y,X1 is X+1,bet(X1,Y,Z).

bet1(X,Y,Z):- X<Y,Z=X;X==Y,Z=X,!;X<Y,X1 is X+1,bet(X1,Y,Z).


ecrit2(0,Y):- Y is 0.
ecrit1(N,X):- N>1,X is N-1.
ecrit1(N,X):- N==0,X=0,!.
ecrit1(N,X):- N>0,N1 is N-1,ecrit1(N1,X).



fact1(0,X):- write('0! = 1'),nl,X=1.
fact1(N,X):- N>=0,N1 is N-1,fact1(N1,X1),X is X1*N,writef('%t! = %t ',[N,X]),nl,!.


plus1(X,Y,Z):- nonvar(X),nonvar(Y),var(Z),Z is X+Y,!.
plus1(X,Y,Z):- nonvar(X),var(Y),nonvar(Z),Y is Z-X,!.
plus1(X,Y,Z):- var(X),nonvar(Y),nonvar(Z),X is Z-Y,!.
plus1(X,Y,Z):- nonvar(X),nonvar(X),nonvar(Z),plus1(X,Y,Z1),Z=Z1.



