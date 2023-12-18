CREATE DATABASE venda;
USE venda;

CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY AUTO_INCREMENT,
    NomeCliente VARCHAR(50)
);

CREATE TABLE Produtos (
    NomeProduto VARCHAR(50),
    IDProduto INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Compras (
    IDCompra INT PRIMARY KEY AUTO_INCREMENT,
    IDCliente INT,
    IDProduto INT,
    Quantidade INT,
    FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente),
    FOREIGN KEY (IDProduto) REFERENCES Produtos(IDProduto)
);

INSERT INTO Clientes(NomeCliente) VALUES
("Rebecca"),
("Bruno"),
("Sasha"),
("João"),
("Gabriel"),
("Newton"),
("Paulo"),
("Pablo"),
("Maria"),
("Thalita"),
("Thaís"),
("Laura"),
("Natália"),
("Olga"),
("Íris");

INSERT INTO Produtos(NomeProduto) VALUES
("maçã"),
("laranja"),
("mamão"),
("banana"),
("pitaya"),
("alface"),
("cenoura"),
("berinjela"),
("kiwi"),
("brócolis"),
("nabo"),
("ervilha"),
("milho"),
("melancia"),
("melão");

INSERT INTO Compras(Quantidade, IDCliente, IDProduto) VALUES
(29, 1, 15),
(28, 2, 14),
(27, 3, 13),
(25, 4, 12),
(24, 5, 11),
(23, 6, 10),
(22, 7, 9),
(21, 8, 8),
(20, 9, 7),
(19, 10, 6),
(18, 11, 5),
(17, 12, 4),
(16, 13, 3),
(15, 14, 2),
(16, 15, 1);

SELECT Clientes.NomeCliente, Produtos.NomeProduto, Compras.Quantidade
FROM Compras
INNER JOIN Clientes
ON Compras.IDCliente = Clientes.IDCliente
INNER JOIN Produtos
ON Produtos.IDProduto = Compras.IDProduto;
