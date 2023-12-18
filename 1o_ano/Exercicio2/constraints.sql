CREATE DATABASE aleatorio;
USE aleatorio;

CREATE TABLE clientes(
	ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50)
);

INSERT INTO clientes(ID, Nome, Email)
VALUES(1, 'Gabriela', 'gabotsuka.2020@gmail.com'),
		(2, 'Lívia', 'livialmeida.tux@hotmail.com'),
        (3, 'Nicoly', 'nicolymilliorini@etec.sp.gov.br');
        








CREATE DATABASE chveestrn;
USE chveestrn;

CREATE TABLE clientes(
	ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50)
);

INSERT INTO clientes(ID, Nome, Email)
VALUES(1, 'Gabriela', 'gabotsuka.2020@gmail.com'),
		(2, 'Lívia', 'livialmeida.tux@hotmail.com'),
        (3, 'Nicoly', 'nicolymilliorini@etec.sp.gov.br');
        

CREATE TABLE pedidos(
	ID_Pedido INT PRIMARY KEY,
    Data_prod DATE,
    Valor FLOAT,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES clientes(ID)
);

INSERT INTO pedidos(ID, Data_prod, Valor)
VALUES(1, 11012008, 77.00),
		(2, 06053500, 9.99),
        (3, 20092023, 20.50);
        





CREATE DATABASE uni_que;
USE uni_que;

CREATE TABLE produtos(
	ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Codigo INT UNIQUE
);

INSERT INTO produtos(ID, Nome, Codigo)
VALUES(1, 'ovo', 766),
		(2, 'mamão', 599),
        (3, 'maçã', 192);
        
        
        




CREATE DATABASE func;
USE func;

CREATE TABLE funcionarios(
	ID INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Cargo VARCHAR(50)
);

INSERT INTO funcionarios(ID, Nome, Cargo)
VALUES(1, 'Rebecca', 'Administrador'),
		(2, 'Antonio', 'Coordenador'),
        (3, 'Amanda', 'Gerente');    
        
        
        



        
CREATE DATABASE estq;
USE estq;

CREATE TABLE estoque(
	ID INT PRIMARY KEY,
    Nome_do_produto VARCHAR(50),
    Quantidade INT,
    Estado VARCHAR(50),
    CHECK (Estado BETWEEN 'Disponível' AND 'Esgotado')
);

INSERT INTO estoque(ID, Nome_do_produto, Quantidade, Estado)
VALUES(1, 'ovo', 5, 'Disponível'),
		(2, 'mamão', 0, 'Esgotado'),
        (3, 'melão', 0, 'Esgotado');
    
