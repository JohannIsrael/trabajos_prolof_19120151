hermano(juan).   
padre(juan).
padre(antonio).
padre(luiso).
padre(eduardo).
padre(luiso).
padre(pepe).
madre(luisa).
padrede(pedro, juan).
padrede(juan, julio).
padrede(juan, jose).
madrede(luisa, maria).
madrede(maria, liz).
% abuelo(X,Y):- padrede(X,W),padrede(W,Y).
abuelog(X,Y):- padrede(X,W),padrede(W,Y);madrede(X,Y),madrede(W,Y).