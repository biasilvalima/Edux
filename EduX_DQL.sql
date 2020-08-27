-- DQL 
-- Consultar e organizar dados

--Colocar notas
SELECT * FROM ObjetivoAluno;
UPDATE ObjetivoAluno SET Nota = 80 WHERE IdObjetivoALuno = 1;

--Tabelas Usadas
SELECT * FROM ObjetivoAluno ORDER BY Nota DESC;
SELECT * FROM AlunoTurma;
SELECT * FROM Usuario;

--Ranking Por Nota
SELECT
	Usuario.Nome,
	AlunoTurma.IdAlunoTurma,
	ObjetivoAluno.Nota
FROM AlunoTurma
	INNER JOIN Usuario ON AlunoTurma.IdUsuario = Usuario.IdUsuario
	INNER JOIN ObjetivoAluno ON AlunoTurma.IdAlunoTurma = ObjetivoAluno.IdAlunoTurma
	ORDER BY Nota DESC;