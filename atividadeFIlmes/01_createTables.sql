-- Active: 1666902262512@@127.0.0.1@3306@gama
/* 1- Crie uma base de dados de filmes
2- Crie e popule as tabelas utilizando os csvs
3- Crie uma view com as informações das 3 tabelas
*/


CREATE TABLE filmes(
    id INT NOT NULL PRIMARY KEY,
    nome_filme VARCHAR(100) NOT NULL
    );

CREATE TABLE usuarios(
    id INT NOT NULL PRIMARY KEY,
    usuario VARCHAR(20) NOT NULL,
    sexo CHAR NOT NULL
);

CREATE TABLE avaliacoes (
    id INT NOT NULL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_filme INT NOT NULL,
    nota FLOAT,
    CONSTRAINT FK_avaliacoes1 FOREIGN KEY (id_filme) REFERENCES filmes(id),
    CONSTRAINT FK_avaliacoes2 FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);



SELECT * FROM filmes;
SELECT COUNT(*) FROM filmes;
SELECT * FROM usuarios;
SELECT COUNT(*) FROM usuarios;
SELECT * FROM avaliacoes;
SELECT COUNT(*) FROM avaliacoes;

CREATE VIEW vws_avaliacoes AS 
SELECT
    a.id AS id_avaliacao,
    u.usuario,
    u.sexo,
    f.nome_filme,
    a.nota
FROM avaliacoes AS a 
    LEFT JOIN filmes AS f 
        ON f.id = a.id_filme
    LEFT JOIN usuarios AS u
        ON u.id = a.id_usuario;
