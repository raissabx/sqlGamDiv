-- Active: 1666902262512@@127.0.0.1@3306@gama
/*
01. Crie uma tabela no banco de dados para acomodar os valores da planilha de estatística. Com as seguintes restrições:
Nome: não pode ser nulo.
Idade: deve estar entre 1 e 150, e não pode ser nulo.
Filhos: deve ser positivo, preencher com 0 caso o usuário não informe o valor.
Estado: sigla de 2 caracteres
Altura: deve ser menor que 3, e não pode ser nulo
Formação: preencher com “sem formação” caso o usuário não informe o valor.
*/

CREATE TABLE alunos (
    nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL,
    filhos INT DEFAULT 0,
    estado VARCHAR (2),
    altura decimal (3,2) NOT NULL,
    formacao VARCHAR (50) DEFAULT 'Sem Formação',
    CONSTRAINT check_idade CHECK (idade >=0 AND idade <=150),
    CONSTRAINT check_filhos CHECK (filhos >=0),
    CONSTRAINT check_altura CHECK (altura >= 0 AND altura <= 3)

);

/*
02-03. Altere a tabela para adicionar uma coluna ID que se auto incremente automaticamente.
Altere a tabela para adicionar um campo ID do tipo inteiro
Altere a tabela para adicionar uma restrição de chave primária para o campo ID
Altere a tabela para mudar o tipo de dado do campo ID para int auto_incremente.
*/

ALTER TABLE alunos ADD id INT;
ALTER TABLE alunos ADD CONSTRAINT pk_alunos PRIMARY KEY (id);
ALTER TABLE alunos MODIFY COLUMN id INT AUTO_INCREMENT;
SELECT * FROM alunos;
SELECT COUNT(*) FROM alunos;


/*
04. Preencha a tabela com os dados da planilha. (Utilize o comando insert).
*/
INSERT INTO alunos (Nome,Idade,Filhos,Estado,Altura,formacao) VALUES
('Anderson',40,0,'SP',1.9,'Superior Incompleto (ADS)'),
('Ettore Mitsueda',29,2,'SP',1.72,'Ensino Médio Completo'),
('Bruna',28,0,'MG',1.62,'Superior completo'),
('clara',19,0,'RJ',1.63,'superior incompleto (ADS)'),
('João Paulo',27,0,'DF',1.5,'Superior completo'),
('Fernando A',32,1,'SP',1.74,'Mestrado completo/Doutorado incompleto'),
('José Vitor',24,0,'PB',1.78,'superior incompleto'),
('Raissa',32,2,'GO',1.68,'Superior'),
('George',38,0,'CE',1.8,'Superior'),
('Bruno Coelho',30,0,'SP',1.7,'Superior'),
('Fernando Oliveira',41,0,'SP',1.79,'Superior'),
('Edson',26,0,'PR',1.8,'Superior Incompleto'),
('Eron',32,1,'SP',1.76,'Ensino Médio Completo'),
('Fernando',23,0,'RN',1.7,'Ensino Médio'),
('Wagner',30,0,'CE',2,'Superior Completo'),
('Gabrielle',25,0,'RJ',1.56,'Superior Completo'),
('Larissa',28,0,'RJ',1.74,'Ensino Superior Completo'),
('Câmara',58,1,'RJ',1.8,'Superior Completo'),
('William Ferrari',40,3,'SP',1.73,'Superior incompleto'),
('Erick',26,0,'SP',1.7,'Ensino Superior Completo'),
('lucas',26,0,'SP',1.7,'superior'),
('Willian Caetano',37,1,'pa',1.75,'superior'),
('Divino',24,0,'SP',1.69,'Superior'),
('Natalia',25,0,'SP',1.59,'Ensino Médio Completo'),
('julia',30,0,'pa',1.59,'superior completo'),
(' Gabriel Silva',27,0,'SP',1.8,'superior incompleto'),
('Bruno Fernandes',25,0,'SC',1.9,'Superior incompleto'),
('Josivaldo',35,8,'SP',1.8,'Ensino medio Completo'),
('BRUNO LIMA',32,0,'pr',1.8,'Pós graduado'),
('Sandro Santos Marra',38,0,'DF',1.83,'Ensino Superior Inc'),
('Gabriel Queiroz',23,0,'MG',1.78,'Superior Completo');

/*
05. Na linha 27, o nome “ Gabriel Silva” tem um espaço a mais, atualize a linha removendo esse espaço.
*/

UPDATE alunos SET nome ='Gabriel Silva' WHERE nome = ' Gabriel Silva';

/*07. Faça uma consulta para mostrar os estados distintos.*/
SELECT DISTINCT estado FROM alunos;

/*08. Faça uma consulta para contar quantas pessoas tem ensino médio*/
SELECT COUNT(*) AS ensino_medio FROM alunos WHERE formacao 
LIKE "%m_dio%";

/*09. Faça uma consulta para contar quantas pessoas tem tem ensino superior.*/
SELECT COUNT(*) AS ensino_superior FROM alunos WHERE formacao 
LIKE "%superior%" OR formacao LIKE "%p_s%"
   OR formacao LIKE "%mestrado%"
   OR formacao LIKE "%doutorado%";

/*10. Faça uma consulta para contar quantas pessoas 
não tem filho*/

SELECT COUNT(*) FROM alunos WHERE filhos = 0;

/*11. Calcule a altura média da turma*/

SELECT AVG(altura) AS altura_alunos FROM alunos;

/*12. Faça uma consulta para mostrar a menor e a maior 
idade.*/

SELECT MIN(idade) AS menor_idade, 
MAX(idade) AS maior_idade
FROM alunos;

/*13. Conte quantos porcento da turma estão entre 30 e 
40 anos.*/

SELEsCT COUNT(*) AS 30_40 FROM alunos WHERE idade BETWEEN 30 and 40;


/*14. Selecione os nomes que possuem sobrenome 
(linhas com duas palavras).*/

SELECT nome FROM alunos WHERE nome like '% %';


/*15. Faça uma consulta que ordene os nomes em ordem 
alfabética.*/

SELECT * FROM alunos ORDER BY nome;

/*16. Faça uma consulta que ordene os nomes por idade.*/

SELECT * FROM alunos ORDER BY idade;

SELECT nome, idade FROM alunos ORDER BY 2;
/*O 'ORDER BY 2' significa o numero da coluna q queremos 
ordenar. No caso a coluna idade é a número 2.*/


/*17. Faça uma consulta que ordene os nome por 
altura decrescente.*/

SELECT nome, altura FROM alunos ORDER BY altura DESC;

/*18. Faça uma consulta que retorne o nome do aluno que 
tem a maior quantidade de filhos.*/



SELECT nome
FROM alunos 
WHERE filhos = 
(SELECT MAX(filhos) FROM alunos);
/*outra forma de fazer*/
SELECT filhos FROM alunos ORDER BY filhos DESC LIMIT 1;
​
SELECT nome FROM alunos WHERE filhos = 8;
​
SELECT nome
from alunos
where filhos = (
  SELECT filhos
  FROM alunos
  ORDER BY filhos
  DESC LIMIT 1
);

/*19. Faça uma consulta que retorne o nome do aluno 
mais velho.*/

SELECT nome, idade
FROM alunos 
WHERE idade = 
(SELECT MAX(idade) FROM alunos);


/*20. Faça um comando para apagar todos os dados da 
 tabela e manter a estrutura.*/

TRUNCATE TABLE alunos;

SELECT * FROM alunos;

/*Truncate numa coluna só
UPDATE alunos SET formacao = NULL WHERE 1=1;*/
