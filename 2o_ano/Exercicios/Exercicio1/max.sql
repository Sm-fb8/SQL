CREATE DATABASE Escola;
USE Escola;

CREATE TABLE Alunos(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    Idade INT,
    Curso VARCHAR(50)
);

CREATE TABLE Professores(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    Especializacao VARCHAR(50),
    Salario DECIMAL
);

CREATE TABLE Cursos(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
	Departamento VARCHAR(50),
	Carga_horaria INT,
	Professor_ID INT,
    FOREIGN KEY (Professor_ID) REFERENCES Professores(ID)
);

INSERT INTO Alunos(Nome, Sobrenome, Idade, Curso) VALUES
("Stella", "Barros", 16, "Desenvolvimento de Sistemas"),
("Sasha", "Hompkins", 17, "Química"),
("Igor", "Alves", 18, "Nutrição");

INSERT INTO Professores(Nome, Sobrenome, Especializacao, Salario) VALUES
("Reinaldo", "Neves", "Nutricao", 2700.0),
("Ana", "Vieira", "Desenvolvimento de Sistemas", 3500.0);

INSERT INTO Cursos(Nome, Departamento, Carga_horaria, Professor_ID) VALUES
("Desenvolvimento de Sistemas", "Exatas", 600, 2),
("Nutrição", "Humanas", 400, 1);

SELECT * FROM Alunos;
SELECT * FROM Professores;
SELECT Cursos.Nome, Professores.Nome FROM Cursos INNER JOIN Professores ON Cursos.Professor_ID = Professores.ID;
SELECT * FROM Alunos ORDER BY Idade DESC LIMIT 1; 
SELECT * FROM Cursos ORDER BY Carga_horaria DESC LIMIT 1;
