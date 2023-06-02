%Grupo:
%Daniel Perez
%Christian Erazo
%Jhonatan Portilla
%Victor Chacon

pais(colombia, bogota).
pais(argentina, buenosaires).
pais(mexico, cdmx).
pais(ecuador, quito).
pais(peru, lima).
pais(brasil, brasilia).
pais(portugal, lisboa).
pais(angola, luanda).
pais(argelia, argel).
pais(francia, paris).
pais(burundi, gitega).
pais(dinamarca, copenhague).
pais(estadosunidos, washington).
pais(filipinas, manila).
pais(india, nuevadelhi).

idioma(colombia, español).
idioma(argentina, español).
idioma(mexico, español).
idioma(ecuador, español).
idioma(peru, español).
idioma(brasil, portugues).
idioma(portugal, portugues).
idioma(angola, portugues).
idioma(argelia, frances).
idioma(francia, frances).
idioma(burundi, frances).
idioma(dinamarca, ingles).
idioma(estadosunidos, ingles).
idioma(filipinas, ingles).
idioma(india, ingles).


capital(X, Y) :- pais(Y, X).

informacionpais(X, Y, Z) :- capital(Y, X), idioma(X,Z).
comparteidiomapais(X, Y) :- idioma(X, Y), (X\=Y).


%Testearlo: informacionpais(PAIS, CAPITAL, IDIOMA).
%           informacionpais(PAIS, CAPITAL, español).
%			comparteidiomapais(PAIS,ingles).