CREATE DATABASE Faculdade;
USE Faculdade;

CREATE TABLE IF NOT EXISTS Professor(
	CpfProf			VARCHAR(11) NOT NULL,
    NomeProf		VARCHAR(40) NOT NULL,
    EndProf			VARCHAR(40) NOT NULL,
    bairro			VARCHAR(40) NOT NULL,
    cidade			VARCHAR(40) NOT NULL,
    estado			VARCHAR(40) NOT NULL,
    celular			VARCHAR(11) NOT NULL,
    TelProf			VARCHAR(10) NOT NULL,
    DataNasc		DATE NOT NULL,
    SpecProf		VARCHAR(20) NOT NULL,
    TituloProf		VARCHAR(20),
    PRIMARY KEY		(CpfProf)
);

CREATE TABLE IF NOT EXISTS Disciplina(
	CodDisc			INT NOT NULL,
    NomeDisc		VARCHAR(40) NOT NULL,
    CargaHora		INT NOT NULL,
    AulasSem		VARCHAR(30) NOT NULL,
    PRIMARY KEY(CodDisc, NomeDisc)
);

CREATE TABLE IF NOT EXISTS Curso(
	CodCurso		INT NOT NULL,
    NomeCurso		VARCHAR(40) NOT NULL,
    TipoCurso		VARCHAR(20) NOT NULL,
    CargaHora		INT NOT NULL,
    CodInstituto	INT NOT NULL,
    PRIMARY KEY		(CodCurso, NomeCurso)
);

CREATE TABLE IF NOT EXISTS Aluno(
	Matricula		INT NOT NULL,
    Nome			VARCHAR(40) NOT NULL,
    DataNasc		DATE NOT NULL,
    fk_CodCurso		INT NOT NULL,
    fk_NomeCurso	VARCHAR(40) NOT NULL,
    fk_CodDisc		INT NOT NULL,
    fk_NomeDisc		VARCHAR(40) NOT NULL,
    P1				double,
    P2				double,
    Media			double,
    Faltas			INT,
    PRIMARY KEY		(Matricula),
    FOREIGN KEY (fk_CodCurso, fk_NomeCurso) REFERENCES Curso (CodCurso, NomeCurso),
    FOREIGN KEY (fk_CodDisc, fk_NomeDisc) REFERENCES Disciplina (CodDisc, NomeDisc)
);

SELECT * FROM Aluno;
SELECT * FROM Curso;
SELECT * FROM Disciplina;
SELECT * FROM Professor;
