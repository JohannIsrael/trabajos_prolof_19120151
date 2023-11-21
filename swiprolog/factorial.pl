fact(0 ,1).
    fact(N, M):-N>0, N1 is N-1, fact(N1,M1), M is M1*N.

% cuando aparece el false son por los espacios que esta buscando todas las posibilidades

% para poder debugear se utiliza la funcion trace()
