CREATE DATABASE venda;
USE venda;
CREATE TABLE Pedidos (
    NumeroPedido INT PRIMARY KEY AUTO_INCREMENT,
    EnderecoEntrega VARCHAR(100),
    Descricao_Pedido VARCHAR(100)
);


CREATE TABLE Entregas (
    IDEntrega INT PRIMARY KEY AUTO_INCREMENT,
    NumeroPedido INT auto_increment,
    DataEntrega DATE,
    FOREIGN KEY (NumeroPedido) REFERENCES Pedidos(NumeroPedido)
);
INSERT INTO Pedidos(EnderecoEntrega, Descricao_Pedido) 
	VALUES ('Vila Santana', ' Tux pelúcia'),
			('Jardim Ferrari', 'Livro'),
            ('Jardim Santa Rosa', 'Janela'),
            ('Bela Flor', 'Chuveiro'),
            ('Mario Prandini', 'Quadro'),
            ('Emílio Ferrari', 'Gaiola'),
            ('Botafogo', 'Bicicleta'),
            ('Fluminense', 'Jarro'),
            ('Flamengo', 'Óculos'),
            ('Palmeiras', 'Vitrola'),
            ('Corinthians', 'Bomba de Gasolina'),
            ('Vasco da Gama', 'Mouse'),
            ('Cruzeiro', 'Teclado'),
            ('Atlético Mineiro', 'Computador'),
            ('Fortaleza', 'HD');
            
INSERT INTO Entregas(DataEntrega) 
	VALUES ('2023-01-01'),
			('2023-02-02'),
            ('2023-03-03'),
            ('2023-04-03'),
            ('2023-05-07'),
            ('2023-06-09'),
            ('2023-07-08'),
            ('2023-08-10'),
            ('2023-09-11'),
            ('2023-10-31'),
            ('2023-11-21'),
            ('2023-12-22'),
            ('2023-03-07'),
            ('2023-05-11'),
            ('2023-12-13');
            
SELECT Entregas.NumeroPedido, Entregas.DataEntrega FROM Entregas INNER JOIN Pedidos ON Entregas.NumeroPedido = Pedidos.NumeroPedido; 