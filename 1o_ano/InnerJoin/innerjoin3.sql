CREATE DATABASE empresa;
USE empresa;

CREATE TABLE Departamentos (
    IDDepartamento INT PRIMARY KEY AUTO_INCREMENT,
    NomeDepartamento VARCHAR(50)
);

CREATE TABLE Funcionarios (
    IDFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Cargo VARCHAR(50),
    IDDepartamento INT,
    FOREIGN KEY (IDDepartamento) REFERENCES Departamentos(IDDepartamento)
);

INSERT INTO Departamentos(NomeDepartamento) VALUES
("Direção"),
("Coordenação"),
("Administração"),
("Contabilidade"),
("Departamento de Projetos"),
("TI"),
("Recursos Humanos"),
("Gerenciamento"),
("Costura"),
("Geral1"),
("Geral2"),
("Geral3"),
("Jardinagem"),
("Cozinha"),
("Limpeza");

INSERT INTO Funcionarios(Nome, Cargo, IDDepartamento) VALUES
("Rebecca", "Diretora", 1),
("Bruno", "Coordenação", 2),
("Sasha", "Administradora", 3),
("João", "Contador", 4),
("Gabriel", "Gerente de Projetos", 5),
("Newton", "TI", 6),
("Paulo", "Gerente de RH", 7),
("Pablo", "Gerente", 8),
("Maria", "Costureira", 9),
("Thalita", "Funcionaria", 10),
("Thaís", "Funcionaria", 11),
("Laura", "Funncionaria", 12),
("Natália", "Jardineira", 13),
("Olga", "Cozinheira", 14),
("Íris", "Faxineira", 15);

SELECT Funcionarios.Nome, Funcionarios.Cargo, Departamentos.NomeDepartamento FROM Funcionarios INNER JOIN Departamentos ON Funcionarios.IDDepartamento = Departamentos.IDDepartamento;

