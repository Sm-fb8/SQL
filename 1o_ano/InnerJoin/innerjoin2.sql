/*Atividade 5*/
CREATE DATABASE sistema_academico;
USE sistema_academico;

CREATE TABLE Alunos (
    IDAluno INT PRIMARY KEY AUTO_INCREMENT,
    NomeAluno VARCHAR(50)
);


CREATE TABLE Disciplinas (
    IDDisciplina INT PRIMARY KEY AUTO_INCREMENT,
    NomeDisciplina VARCHAR(50)
);


INSERT INTO Alunos(NomeAluno) VALUES
("Stella Maris Ferreira de Barros"),
("Lívia Almeida de Proença Santos"),
("Nicoly Milliorini"),
("Sasha Lyrins"),
("Gabriela Otsuka");

INSERT INTO Disciplinas(NomeDisciplina) VALUES
("Física"),
("Análise e Desenvolvimento de Sistemas"),
("Design Digital"),
("Ciência da Computação"),
("Engenharia da Computação");

SELECT Alunos.NomeAluno, Disciplinas.NomeDisciplina FROM Alunos INNER JOIN Disciplinas ON Alunos.IDAluno = IDDisciplina;

------------------------------------------------------------------------------------------------------------------------------------------
/*Atividade 6*/
CREATE DATABASE sistemavendas;
USE sistemavendas;

CREATE TABLE Regioes (
    IDRegiao INT PRIMARY KEY AUTO_INCREMENT,
    NomeRegiao VARCHAR(50)
);

CREATE TABLE Vendas (
    IDVenda INT PRIMARY KEY AUTO_INCREMENT,
    ValorVenda DECIMAL(10, 2),
    IDRegiao INT,
    FOREIGN KEY (IDRegiao) REFERENCES Regioes(IDRegiao)
);


INSERT INTO Regioes(NomeRegiao) VALUES
("Amazonas"),
("Goiás"),
("Cuiabá"),
("Rio de Janeiro"),
("São Paulo");

INSERT INTO Vendas(ValorVenda, IDRegiao) VALUES
(9.50, 1),
(5.90, 2),
(1.56, 3),
(8.66, 4),
(7.69, 5);

SELECT Vendas.ValorVenda , Regioes.NomeRegiao FROM Vendas INNER JOIN Regioes ON Vendas.IDRegiao = Regioes.IDRegiao;

------------------------------------------------------------------------------------------------------------------------
/*Atividade 7*/
CREATE DATABASE APS;
USE APS;

CREATE TABLE Funcionarios (
    IDFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    NomeFuncionario VARCHAR(50)
);

CREATE TABLE Projetos (
    IDProjeto INT PRIMARY KEY AUTO_INCREMENT,
    NomeProjeto VARCHAR(50),
    IDFuncionarioResponsavel INT,
    FOREIGN KEY (IDFuncionarioResponsavel) REFERENCES Funcionarios(IDFuncionario)
);

INSERT INTO Funcionarios(NomeFuncionario) VALUES
("Stella Maris Ferreira de Barros"),
("Lívia Almeida de Proença Santos"),
("Nicoly Milliorini"),
("Sasha Lyrins"),
("Gabriela Otsuka");

INSERT INTO Projetos(NomeProjeto, IDFuncionarioResponsavel) VALUES
("Análise do Sistema de Agendamentos", 1),
("Design do Sistema de Agendamentos", 2),
("Wire Frame do Sistema de Agendamentos", 3),
("Administração do Projeto", 4),
("Analise do Banco de Dados do Sistema", 5);

SELECT Funcionarios.NomeFuncionario , Projetos.NomeProjeto FROM Funcionarios INNER JOIN Projetos ON Funcionarios.IDFuncionario = Projetos.IDFuncionarioResponsavel;

-------------------------------------------------------------------------------------------------------------------------------------------
/*Atividade 8*/
CREATE DATABASE sistemaentregas;
USE sistemaentregas;


CREATE TABLE Transportadoras (
    IDTransportadora INT PRIMARY KEY AUTO_INCREMENT,
    NomeTransportadora VARCHAR(50)
);

CREATE TABLE Encomendas (
    NumeroEncomenda INT PRIMARY KEY AUTO_INCREMENT,
    IDTransportadora INT,
    DescricaoEncomenda VARCHAR(100),
    FOREIGN KEY (IDTransportadora) REFERENCES Transportadoras(IDTransportadora)
);

INSERT INTO Transportadoras(NomeTransportadora) VALUES
("Chickenitos"),
("Helllman"),
("Sunshine"),
("Doe"),
("Nill");

INSERT INTO Encomendas(IDTransportadora, DescricaoEncomenda) VALUES
(5, "Corante"),
(4, "Uva"),
(3, "Prancha de Surf"),
(2, "Maionese"),
(1, "Nuggets");

SELECT Encomendas.NumeroEncomenda, Transportadoras.NomeTransportadora FROM Encomendas INNER JOIN Transportadoras ON Encomendas.IDTransportadora = Transportadoras.IDTransportadora;



