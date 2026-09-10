CREATE TABLE pessoa(
  id_pessoa SERIAL PRIMARY KEY,
  nome varchar(255),
  cpf varchar(14)
);

SELECT * FROM pessoa;

CREATE TABLE turma (
  id_turma SERIAL PRIMARY KEY,
  nome varchar(255),
  fk_professor int,
  CONSTRAINT fk_professor FOREIGN KEY (fk_professor) REFERENCES professor (id_professor)
);

SELECT * FROM turma;

INSERT INTO turma (nome, fk_professor) VALUES ('Matemática - 1º Ano', 1);