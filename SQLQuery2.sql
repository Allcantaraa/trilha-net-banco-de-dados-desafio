SELECT Nome,Ano FROM Filmes;


SELECT Nome,Ano,Duracao FROM Filmes ORDER BY Ano ASC;


SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';


SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = 1997;



SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano >= 2000;



SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > 100 AND  Duracao <150  ORDER BY Duracao ASC;






SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC; 



SELECT * FROM Atores WHERE Genero = 'M';


SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC;


SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;


SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';


SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;
