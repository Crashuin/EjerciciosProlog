%Grupo:
%Daniel Perez
%Christian Erazo
%Jhonatan Portilla
%Victor Chacon

fibonacci(0, 0).
fibonacci(1, 1).

fibonacci(N, Resultado) :- N > 1, N1 is N - 1, N2 is N - 2,
    					   fibonacci(N1, R1),
    					   fibonacci(N2, R2),
    					   Resultado is R1 + R2.

%Testear
%fibonacci(4, Resultado).
%0,1,1,2,3.. se suma los anteriores numeros 2+1=3 , el cero se toma de partida y validar la secuencia.
