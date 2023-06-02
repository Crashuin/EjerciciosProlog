%Grupo:
%Daniel Perez
%Christian Erazo
%Jhonatan Portilla
%Victor Chacon

% Hechos que definen las relaciones familiares
padrede(juan, maria).
padrede(pedro, juan).
padrede(pedro, ana).
padrede(miguel, pedro).

antecesor_de(X,Y) :- padrede(X, Y). % Padre
antecesor_de(X,Y) :- padrede(X, Z), padrede(Z, Y). % Abuelo
antecesor_de(X,Y) :- padrede(X, Z1), padrede(Z1, Z2), padrede(Z2, Y). %Bisabuelo

antecesor_de(X, Y) :- padrede(X, Y).                     % Paso base
antecesor_de(X, Y) :- padrede(X, Z), antecesor_de(Z, Y). % Paso recursivo
