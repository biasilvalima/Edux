--Criação de Tabelas e o banco de dados
-- DDL

CREATE DATABASE EduX;
USE EduX;

CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR (50) NOT NULL
);


CREATE TABLE Instituicao(
	IdInstituicao INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Logradouro VARCHAR(80) NOT NULL,
	Numero INT,
	Complemento VARCHAR(50)
);

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(150) NOT NULL,
	Idade INT NOT NULL,
	Sexo VARCHAR(1),

	--FK
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	IdInstituicao INT FOREIGN KEY REFERENCES Instituicao (IdInstituicao)
);

CREATE TABLE Categoria(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Categoria VARCHAR (80) NOT NULL
);

CREATE TABLE Post(
	IdPost INT PRIMARY KEY IDENTITY NOT NULL,
	Texto VARCHAR(200),
	Imagem IMAGE,

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Dicas(
	IdDicas INT PRIMARY KEY IDENTITY NOT NULL,
	Texto VARCHAR(200),
	Imagem IMAGE,

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE ProfTurma(
	IdProfTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Formacao VARCHAR(800),

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE TURMA(
	IdTurma INT PRIMARY KEY IDENTITY NOT NULL,
	AnoInicial DATETIME NOT NULL,
	AnoFinal DATETIME NOT NULL,

	--FK
	IdProfTurma INT FOREIGN KEY REFERENCES ProfTurma (IdProfTurma)
);

CREATE TABLE AlunoTurma(
	IdAlunoTurma INT PRIMARY KEY IDENTITY NOT NULL,

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma)
);

CREATE TABLE Curso(
	IdCurso INT PRIMARY KEY IDENTITY NOT NULL,
	Curso VARCHAR(50) NOT NULL,
	TotalHoras INT NOT NULL,

	--FK
	IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma)
);

CREATE TABLE ObjetivoAluno(
	IdObjetivoAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Categoria BINARY NOT NULL,
	DataEntrega DATETIME,

	--FK
	IdAlunoTurma INT FOREIGN KEY REFERENCES AlunoTurma (IdAlunoTurma)
);

CREATE TABLE Objetivo(
	IdObjetivo INT PRIMARY KEY IDENTITY NOT NULL,
	DataInicial DATETIME NOT NULL,
	Descricao VARCHAR(200) NOT NULL,

	--FK
	IdObjetivoAluno INT FOREIGN KEY REFERENCES ObjetivoAluno (IdObjetivoAluno),
	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
);