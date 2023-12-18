CREATE DATABASE aleatorio;
USE aleatorio;

CREATE TABLE aleatoria (
	id int primary key,
    saldo bigint,
	graus_celsius float,
	preco double,
	valor decimal,
	email varchar(50),
    codigo char(6),
    conteudo text,
    cargo  enum ('Gerente', 'Administrador'),
	data_final date,
	horario time,
    horario_data datetime,
	momento timestamp,
	voto boolean, 
    permissoes set('leitura, escrita')
);

INSERT INTO aleatoria(id, saldo, graus_celsius, preco, valor, email, codigo, conteudo, cargo, data_final, horario, horario_data, momento, voto, permissoes)
VALUES (1, 3466, 24.5, 1999.99, 2000.0001, 'stella_barros@etec.sp.gov.br', 51, 'conteudo conteudo', 'Admistrador', '11-01-2008', '12:55', '11-01-2008 12:55', 'NULL', 1, 'escrita'); 

