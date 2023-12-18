CREATE DATABASE aleatorio1;

USE aleatorio1;
CREATE TABLE produtos(
	id INT PRIMARY KEY,
    nome VARCHAR(50),
	preco DECIMAL
);
ALTER TABLE produtos
ADD COLUMN estoque INT;

CREATE INDEX idx_nome ON produtos (nome);

INSERT INTO produtos (id, nome, preco, estoque)
VALUES (1, 'morango', 8.99, 50),
		(2, 'abóbora', 12.58, 21),
        (3, 'melão', 25.99, 13),
        (4, 'melancia', 20.00, 4),
        (5, 'kiwi', 32.50, 36),
        (6, 'laranja', 10.00, 40),
        (7, 'mexirica', 16.00, 2),
        (8, 'pitaya', 55.50, 18),
        (9, 'mirtilo', 16.99, 10),
        (10, 'framboesa', 51.00, 5);
SELECT nome, preco FROM produtos WHERE preco>50;
        
CREATE DATABASE aleatorio2;
USE aleatorio2;
CREATE TABLE clientes(
	id INT,
	nome VARCHAR(50),
    idade INT,
    cidade VARCHAR(50)
);

INSERT INTO clientes (id, nome, idade, cidade)
VALUES (1, 'Maria', 41, 'Aguapuera'),
		(2, 'Reinaldo', 35, 'Ourinhos'),
		(3, 'José', 50, 'Itapeva'),
        (4, 'Joana', 31, 'Londres'),
        (5, 'João', 21, 'Campinas'),
        (6, 'Vitória', 50, 'Taquarivaí'),
        (7, 'Bruno', 23, 'Guarulhos'),
        (8, 'Henrique', 37, 'Itapeva'),
        (9, 'Eliane', 34, 'Bossa Nova'),
        (10, 'Nicoly', 15, 'Buri');
        
UPDATE clientes SET nome = 'Joana' WHERE id = 2;
DELETE FROM clientes WHERE id = 3;

