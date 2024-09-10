--1
SELECT nome, ano FROM filmes;

--2
SELECT Nome, Ano, Duracao FROM filmes 
ORDER BY ano ASC;

--3
SELECT Nome, Ano, Duracao FROM filmes
WHERE Nome LIKE 'de volta para o futuro'; 

--4
SELECT Nome, Ano, Duracao FROM filmes
WHERE Ano = 1997;

--5
SELECT Nome, Ano, Duracao FROM filmes
WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao FROM filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;	

--7
SELECT Ano, COUNT(Ano) quantidade FROM filmes
GROUP BY Ano
ORDER BY quantidade DESC;

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M';

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10
SELECT f.Nome, g.Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

--11
SELECT f.Nome, g.Genero FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério';

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel FROM Filmes f
JOIN ElencoFilme e ON f.Id = e.IdFilme
JOIN Atores a ON a.Id = e.IdAtor;