CREATE DATABASE teste_prova;
USE teste_prova;

CREATE TABLE usuarios(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    IDADE INT, 
    NOME VARCHAR(50),
    EMAIL VARCHAR(50),
    ALTURA DECIMAL,
    PESO DECIMAL
);

INSERT INTO usuarios(IDADE, NOME, EMAIL, ALTURA, PESO)
VALUES (15, 'Stella Maris', 'stella.barros@etec.sp.gov.br', 1.61, 51.0);

SELECT * FROM usuarios;