CREATE DATABASE minha_base;

USE minha_base;

CREATE TABLE clientes (
	id INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT, 
	cidade VARCHAR(50),
    nome_pai VARCHAR(50),
    nome_mae VARCHAR(50)
);


INSERT INTO clientes(id, nome, idade, cidade, nome_pai, nome_mae)
VALUES (1, 'João', 25, 'Ourinhos', 'Robson', 'Cláudia'),
		(2, 'Amanda', 32, 'Aguapuera', 'Taylor', 'Glaucia'),
        (3, 'Gabriela', 15, 'Itapeva', 'José', 'Jéssica');
        
SELECT nome, idade, cidade FROM clientes WHERE idade > 25;