%Grupo:
%Daniel Perez
%Christian Erazo
%Jhonatan Portilla
%Victor Chacon

%En caso de ingresar ceros
mcd(A, 0, Result):- Result is A.
mcd(0, B, Result):- Result is B.

%Regla 1: Si A es mayor o igual a B, Si A/B el residuo 
% es igual(=:=) a 0 el resultado(MCD) es B.
mcd(A, B, Result) :-
    A >= B,
    A mod B =:= 0,
    Result is B.

%Regla 2: Si A es mayor o igual a B, Si A/B el residuo es diferente de 0 entonces
% a la variable R (Residuo) le asignamos el residuo de la divicion A/B, al final
% llama a la funcion para repetir el proceso.
mcd(A, B, Result) :-
    A >= B,
    A mod B =\= 0,
    R is A mod B,
    mcd(B, R, Result).

%Regla 3: En caso de que A sea mayor que B llama a la funcion intercambiando las variables
mcd(A, B, Result) :-
    A < B,
    mcd(B, A, Result).

%Ejemplo: mcd(36, 48, Resultado) ---> el MCD de 36 y 48 es --> 12

