CREATE database TESTE;
USE TESTE;
 
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    registro_atualizado VARCHAR(100) DEFAULT "NÃO ATUALIZADO",
    data_modificacao TIMESTAMP
);
 
INSERT INTO clientes (nome, email, data_modificacao) VALUES
('João', 'joao@example.com', NOW()),
('Maria', 'maria@example.com', NOW()),
('Pedro', 'pedro@example.com', NOW());
 
DELIMITER //
CREATE TRIGGER atualizar_data_modificacao
BEFORE UPDATE ON clientes
FOR EACH ROW
BEGIN
    SET NEW.data_modificacao = NOW();
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER atualizar_situacao_registro
BEFORE UPDATE ON clientes
FOR EACH ROW
BEGIN
    SET NEW.registro_atualizado = "ATUALIZADO";
END;
//
DELIMITER ;
 
select * FROM clientes;
 
UPDATE clientes SET email = 'joao_novo@examplis.com' WHERE id = 1;

/*Criar uma coluna "registro_atualizado" do tipo varchar, definir um DEFAULT, toda vez que um registro for atualizado a trigger deverá mudar o dado da coluna "registro_atualizado" para "ATUALIZADO"*/