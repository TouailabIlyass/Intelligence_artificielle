employe(ahmed,32,homme,2006,iam,2).
employe(omar,40,homme,2000,meditel,4).
employe(salma,30,femme,2010,inwi,3).
employe(kamal,33,homme,2004,meditel,3).
employe(kawtar,26,femme,2012,inwi,1).
employe(souad,44,femme,1998,iam,4).
employe(jalil,50,homme,1990,iam,5).
employe(khadija,39,femme,2005,meditel,3).
employe(othmane,29,homme,2009,meditel,2).

salaire(iam,1,3000).
salaire(iam,2,3500).
salaire(iam,3,5000).
salaire(iam,4,7000).
salaire(iam,5,10000).
salaire(meditel,1,3500).
salaire(meditel,2,4000).
salaire(meditel,3,5000).
salaire(meditel,4,7500).
salaire(meditel,5,10000).
salaire(inwi,1,4000).
salaire(inwi,2,35000).
salaire(inwi,3,6000).
salaire(inwi,4,8000).
salaire(inwi,5,11000).


jeune_employe(A,B):- nonvar(A),var(B),employe(A,X,_,_,B,_),X=<30.
jeune_employe(A,B):- var(A),nonvar(B),employe(A,X,_,_,B,_),X=<30.
jeune_employe(A,B):- var(A),var(B),employe(A,X,_,_,B,_),X=<30.




but(X):- employe(X,_,_,_,iam,_).


butSalAhmed(Z):-employe(ahmed,_,_,_,X,Y),salaire(X,Y,Z).



cadre(Nom):-employe(Nom,_,_,_,_,Y),Y>=3.

collegues(Nom1,Nom2):-employe(Nom1,_,_,_,X,_),employe(Nom2,_,_,_,Y,_),X=Y.


gagne_plus_que(Nom1,Nom2):-employe(Nom1,_,_,_,E1,X),employe(Nom2,_,_,_,E2,Y),salaire(E1,X,Z1),salaire(E2,Y,Z2),Z1>Z2.


