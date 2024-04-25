CREATE DATABASE aleatorio;
USE aleatorio;

CREATE TABLE usuarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(50)
);

ALTER TABLE usuarios ADD idade INT NOT NULL;

-------------------------------------------------

CREATE TABLE produtos(
	id INT PRIMARY KEY AUTO_INCREMENT,
	preco_atual DECIMAL(10, 2)
);

ALTER TABLE produtos RENAME COLUMN preco_atual TO preco;

-------------------------------------------------

CREATE TABLE funcionarios(
	id INT PRIMARY KEY AUTO_INCREMENT,
	telefone VARCHAR(20),
    salario INT
);

ALTER TABLE funcionarios DROP COLUMN telefone;

-------------------------------------------------

ALTER TABLE funcionarios MODIFY COLUMN salario DECIMAL(10, 2) NOT NULL;

-------------------------------------------------

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT
);

CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT
);

ALTER TABLE pedidos ADD CONSTRAINT cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes(id);

-------------------------------------------------

ALTER TABLE produtos DROP COLUMN id;
ALTER TABLE produtos ADD COLUMN codigo INT PRIMARY KEY;

-------------------------------------------------

ALTER TABLE produtos ADD COLUMN estoque_minimo INT;
ALTER TABLE produtos CHANGE COLUMN categoria categoria_id VARCHAR(50);
ALTER TABLE produtos ADD CONSTRAINT categoria_id FOREIGN KEY (categoria_id) REFERENCES categorias(id);
ALTER TABLE produtos DROP COLUMN desconto;
ALTER TABLE produtos MODIFY COLUMN descricao TEXT;
ALTER TABLE produtos ADD COLUMN data_atualizacao DATE;
