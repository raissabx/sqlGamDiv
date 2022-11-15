-- Active: 1666902262512@@127.0.0.1@3306@gama

/*4 -Quantos usuários são homens, mulheres, e 
adicione um total?*/

SELECT sexo, COUNT(1)
FROM usuarios
GROUP BY sexo;

/* 5- Quantos usuários possuem nome composto?*/

/* 6- Qual o filme com o maior nome?*/

SELECT * FROM filmes
WHERE
LENGTH(nome_filme) = (SELECT max(LENGTH(nome_filme))FROM filmes)
ORDER BY nome_filme;

/* 7- Qual o filme com o menor nome?*/
SELECT * FROM filmes
WHERE
LENGTH(nome_filme) = (SELECT MIN(LENGTH(nome_filme))FROM filmes)
ORDER BY nome_filme;

/* 8- Faça uma agrupamento para mostrar quantos filmes
começam com cada letra do alfabeto.*/




