﻿-- Colocar dados nas tabelas 
-- DML

INSERT INTO TipoUsuario (Tipo) VALUES
	('Professor'),
	('Aluno');

INSERT INTO Instituicao 
(Nome, Logradouro, Numero, Complemento) VALUES
('Escola Luziana', 'Rua Flores', 777, '');


INSERT INTO Usuario 
(Nome, Email, Senha, Idade, Sexo, IdTipoUsuario, IdInstituicao) VALUES
('Gabriel', 'Gabriel@email.com', 'Gabriel123', 20, 'M', 2, 1);
SELECT * FROM Usuario;
--DELETE FROM Usuario WHERE IdUsuario = 1;

INSERT INTO Categoria (Categoria) VALUES
('Oculto');
SELECT * FROM Categoria;

--INSERT INTO Post (Texto, Imagem, IdUsuario) VALUES
--('Era uma vez...',  * FROM OPENROWSET (BULK'‪C:\Users\fernanda1234\Desktop\orkut.png') IMAGEM, 3);

--INSERT INTO Dicas (Texto, Imagem, IdUsuario) VALUES
--(A borboleta..., SELECT * FROM OPENROWSER (...) IMAGEM, 2);

INSERT INTO ProfTurma (Formacao, IdUsuario) VALUES
('DEV', '2');
SELECT * FROM ProfTurma;
SELECT * FROM Usuario;

INSERT INTO TURMA (AnoInicial,AnoFinal, IdProfTurma) VALUES
('1990-06-01', '1992-06-01', 2);
SELECT * FROM TURMA;
--DELETE FROM TURMA WHERE IdTurma = 1;

INSERT INTO AlunoTurma (IdTurma, IdUsuario) VALUES
(3,6);
SELECT * FROM AlunoTurma;

INSERT INTO Curso (Curso, TotalHoras, IdTurma) VALUES
('DEV', 2000, 3);
SELECT * FROM Curso;

INSERT INTO ObjetivoAluno(Categoria, DataEntrega, IdAlunoTurma) VALUES
(1, 2020-08-26, 1);
SELECT * FROM ObjetivoAluno;

INSERT INTO Objetivo (DataInicial, Descricao, IdObjetivoAluno, IdCategoria) VALUES
(2020-08-10, 'Fazer um...', 3, 5);
SELECT * FROM Objetivo;
SELECT * FROM Categoria;