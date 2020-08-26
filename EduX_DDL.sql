USE Edux;
GO


CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR (50) NOT NULL
);


CREATE TABLE Instituicao(
	IdInstituicao INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50),
	Logradouro VARCHAR(80),
	Numero INT,
	Complemento VARCHAR(50)
);

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(50),
	Email VARCHAR(50),
	Senha VARCHAR(150),
	Idade INT,
	Sexo VARCHAR(1),

	--FK
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	IdInstituicao INT FOREIGN KEY REFERENCES Instituicao (IdInstituicao)
);

CREATE TABLE Categoria(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Categoria INT
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
	AnoInicial DATETIME,
	AnoFinal DATETIME,

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
	Curso VARCHAR(50),
	TotalHoras INT,

	--FK
	IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma)
);

CREATE TABLE ObjetivoAluno(
	IdObjetivoAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Categoria BINARY,
	DataEntrega DATETIME,
	Nota INT,

	--FK
	IdAlunoTurma INT FOREIGN KEY REFERENCES AlunoTurma (IdAlunoTurma)
);

CREATE TABLE Objetivo(
	IdObjetivo INT PRIMARY KEY IDENTITY NOT NULL,
	DataInicial DATETIME,
	Descricao VARCHAR(200),

	--FK
	IdObjetivoAluno INT FOREIGN KEY REFERENCES ObjetivoAluno (IdObjetivoAluno),
	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
);






