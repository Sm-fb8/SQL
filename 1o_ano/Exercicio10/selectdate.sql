CREATE DATABASE facul;
USE facul;

CREATE TABLE INFORMACOES_ALUNOS(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    primeiro_nome VARCHAR(20),
    sobrenome VARCHAR(50),
    data_nascimento DATE,
    curso VARCHAR(50)
);

INSERT INTO INFORMACOES_ALUNOS(primeiro_nome, sobrenome, data_nascimento, curso) 
VALUES ('Ana', 'Florchask', '2000-08-11', 'Ciência da Computação'),
		('Roberto', 'Silva', '1995-10-25', 'Administração'),
        ('Igor', 'Neves', '2003-06-03', 'Medicina'),
        ('Sasha', 'Lyrins', '2001-02-14', 'Artes'),
        ('Heitor', 'Gueta', NULL, 'Química');
        
SELECT * FROM INFORMACOES_ALUNOS WHERE data_nascimento > '2000-01-01';
SELECT * FROM INFORMACOES_ALUNOS WHERE curso = 'Ciência da Computação';
UPDATE INFORMACOES_ALUNOS SET sobrenome = 'Johnson' WHERE id_aluno = 3;
DELETE FROM INFORMACOES_ALUNOS WHERE data_nascimento IS NULL;