CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livros(
	id INT PRIMARY KEY,
    titulo VARCHAR(50),
    autor VARCHAR(50),
    anopublicacao INT
);

INSERT INTO livros(id, titulo, autor, anopublicacao)
VALUES (1, 'Historiografia de Cadu', 'Carlos Eduardo', 1995),
		(2, 'Tranca Ruas', 'S.M', 2023),
        (3, 'As 7 cruzadinhas', 'Gislene', 1999);
        
SELECT titulo FROM livros;
        
