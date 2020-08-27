-- Colocar dados nas tabelas 
-- DML

INSERT INTO TipoUsuario (Tipo) VALUES
	('Professor'),
	('Aluno');
	SELECT * FROM TipoUsuario

INSERT INTO Instituicao 
(Nome, Logradouro, Numero, Complemento) VALUES
('Escola Luziana', 'Rua Flores', 777, '');
SELECT * FROM Instituicao;

INSERT INTO Usuario 
(Nome, Email, Senha, Idade, Sexo, IdTipoUsuario, IdInstituicao) VALUES
('Gabriel', 'Gabriel@email.com', 'Gabriel123', 20, 'M', (select max(IdTipoUsuario) from TipoUsuario), (select max(IdInstituicao) from Instituicao));
SELECT * FROM Usuario;
--DELETE FROM Usuario WHERE IdUsuario = 1;

INSERT INTO Categoria (Categoria) VALUES
('Oculto');
SELECT * FROM Categoria;

INSERT INTO Post (Texto, IdUsuario) VALUES
('Era uma vez...', (select max(IdUsuario) from Usuario));
SELECT * FROM Post;

INSERT INTO Dicas (Texto, IdUsuario) VALUES
('A borboleta...', (select max(IdUsuario) from Usuario));
SELECT * FROM Dicas;

INSERT INTO ProfTurma (Formacao, IdUsuario) VALUES
('DEV', (select max(IdUsuario) from Usuario));
SELECT * FROM ProfTurma;

INSERT INTO TURMA (AnoInicial,AnoFinal, IdProfTurma) VALUES
('1990-06-01', '1992-06-01', (select max(IdProfTurma) from ProfTurma));
SELECT * FROM TURMA;
--DELETE FROM TURMA WHERE IdTurma = 1;

INSERT INTO AlunoTurma (IdTurma, IdUsuario) VALUES
((select max(IdTurma) from TURMA), (select max(IdUsuario) from Usuario));
SELECT * FROM AlunoTurma;

INSERT INTO Curso (Curso, TotalHoras, IdTurma) VALUES
('DEV', 2000, (select max(IdTurma) from TURMA));
SELECT * FROM Curso;

INSERT INTO ObjetivoAluno(Categoria, DataEntrega, IdAlunoTurma, Nota) VALUES
(1, 2020-08-26, (select max(IdAlunoTurma) from AlunoTurma), 100);
SELECT * FROM ObjetivoAluno;

INSERT INTO Objetivo (DataInicial, Descricao, IdObjetivoAluno, IdCategoria) VALUES
(2020-08-10, 'Fazer um...', (select max(IdObjetivoAluno) from ObjetivoAluno), (select max(IdCategoria) from Categoria));
SELECT * FROM Objetivo;
