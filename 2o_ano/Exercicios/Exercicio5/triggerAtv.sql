create database testeTriggers;
use testeTriggers;

create table Produtos (
	id_produto int primary key auto_increment,
    nome_produto varchar(100) not null,
    preco_produto decimal(10, 2),
    estoque_produto int not null
);

create table Clientes (
	id_cliente int primary key auto_increment,
    nome_cliente varchar(50) not null,
    email_cliente varchar(50),
    desconto_nivel_cliente int not null
);

create table Pedidos (
	id_pedido int primary key auto_increment,
    cliente_id int,
    data_hora datetime,
    valor_final decimal(10, 2),
    foreign key (cliente_id) references Clientes(id_cliente)
);

create table itens_pedido (
	id_item_pedido int primary key auto_increment,
    pedido_id int,
    produto_id int,
    produto_quantidade int,
    produto_preco decimal(10, 2),
    foreign key (pedido_id) references Pedidos(id_pedido),
    foreign key (produto_id) references Produtos(id_produto)
);

INSERT INTO Produtos (nome_produto, preco_produto, estoque_produto) VALUES
("Camiseta", 25.99, 50),
("Calça Jeans", 49.99, 30),
("Tênis Esportivo", 79.99, 20),
("Óculos de Sol", 39.99, 15),
("Relógio de Pulso", 99.99, 10),
("Bolsa Feminina", 29.99, 25),
("Chapéu de Palha", 19.99, 35),
("Meias", 4.99, 100),
("Boné", 14.99, 40),
("Cinto de Couro", 34.99, 20);
 
INSERT INTO Clientes (nome_cliente, email_cliente, desconto_nivel_cliente) VALUES
("João Silva", "joao@example.com", 5),
("Maria Oliveira", "maria@example.com", 10),
("Pedro Santos", "pedro@example.com", 0),
("Ana Souza", "ana@example.com", 15),
("Carlos Lima", "carlos@example.com", 5),
("Sandra Pereira", "sandra@example.com", 20),
("Lucas Castro", "lucas@example.com", 10),
("Mariana Costa", "mariana@example.com", 5),
("Rafaela Almeida", "rafaela@example.com", 10),
("Gustavo Rodrigues", "gustavo@example.com", 0);
 
INSERT INTO Pedidos (cliente_id, data_hora, valor_final) VALUES
(1, "2024-04-25 10:30:00", 150.99),
(3, "2024-04-25 11:45:00", 99.50),
(5, "2024-04-25 12:15:00", 275.75),
(2, "2024-04-25 13:20:00", 65.25),
(4, "2024-04-25 14:10:00", 420.00),
(6, "2024-04-25 15:05:00", 80.00),
(8, "2024-04-25 16:30:00", 200.25),
(10, "2024-04-25 17:40:00", 150.00),
(7, "2024-04-25 18:20:00", 95.50),
(9, "2024-04-25 19:00:00", 55.75);
 
INSERT INTO itens_pedido (pedido_id, produto_id, produto_quantidade, produto_preco) VALUES
(1, 2, 2, 99.98),
(2, 4, 1, 39.99),
(3, 5, 3, 299.97),
(4, 1, 1, 25.99),
(5, 7, 2, 39.98),
(6, 3, 1, 79.99),
(7, 8, 5, 24.95),
(8, 10, 3, 104.97),
(9, 6, 1, 29.99),
(10, 9, 2, 29.98);
