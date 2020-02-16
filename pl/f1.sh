

appartient(X,[X|_]).
appartient(X,[_|Q]):- appartient(X,Q):.
