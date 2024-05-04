CREATE DATABASE aleatorio;
USE aleatorio;

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(50) NOT NULL,
    idade_aluno INT NOT NULL,
    status_aluno VARCHAR(50) NOT NULL
);

INSERT INTO alunos (nome_aluno, idade_aluno, status_aluno) VALUES
("Adriana", 17, "Em progressão parcial"),
("Michael", 17, "Afastado"),
("Irís", 16, "Presente"),
("Vladimir", 18, "Reprovado");

SELECT nome_aluno, idade_aluno,
    IF(idade_aluno < 18, "Menor de Idade", "Adulto") AS status_etario FROM alunos;

-------------------------------------------------------------------
ALTER TABLE alunos ADD pontuacao INT;

UPDATE alunos
SET pontuacao = 5
WHERE id_aluno = 1;

UPDATE alunos
SET pontuacao = NULL
WHERE id_aluno = 2;

UPDATE alunos
SET pontuacao = 10
WHERE id_aluno = 3;

UPDATE alunos
SET pontuacao = 3
WHERE id_aluno = 4;

SELECT nome_aluno, pontuacao,
    IF(pontuacao IS NULL, "Sem Pontuação", "Pontuação") AS status_pontuacao FROM alunos;

