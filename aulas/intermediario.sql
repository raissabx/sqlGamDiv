-- Active: 1666902262512@@127.0.0.1@3306@gama
CREATE TABLE alunos_int (
    nome VARCHAR(30) NOT NULL,
    idades INT NOT NULL,
    filho INT DEFAULT 0,
    estado VARCHAR (2),
    alturaa decimal (3,2) NOT NULL,
    formacao VARCHAR (50) DEFAULT 'Sem Formação',
    CONSTRAINT check_idades CHECK (idades >=0 AND idades <=150),
    CONSTRAINT check_filho CHECK (filho >=0),
    CONSTRAINT check_alturaa CHECK (alturaa >= 0 AND alturaa <= 3)

);

ALTER TABLE alunos_int ADD id INT;
ALTER TABLE alunos_int ADD CONSTRAINT pk_alunos_int PRIMARY KEY (id);
ALTER TABLE alunos_int MODIFY COLUMN id INT AUTO_INCREMENT;
SELECT * FROM alunos_int;
SELECT COUNT(*) FROM alunos_int;

INSERT INTO alunos_int (Nome,Idades,Filho,Estado,Alturaa,formacao) VALUES
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
('Gabriel Silva',27,0,'SP',1.8,'superior incompleto'),
('Bruno Fernandes',25,0,'SC',1.9,'Superior incompleto'),
('Josivaldo',35,8,'SP',1.8,'Ensino medio Completo'),
('BRUNO LIMA',32,0,'pr',1.8,'Pós graduado'),
('Sandro Santos Marra',38,0,'DF',1.83,'Ensino Superior Inc'),
('Gabriel Queiroz',23,0,'MG',1.78,'Superior Completo');

SELECT estado, COUNT(nome) AS qtd_alunos 
FROM alunos_int 
GROUP BY estado ORDER BY 2 DESC;

SELECT
    CASE
        WHEN idades BETWEEN 10 AND 19 THEN '10-19'
        WHEN idades BETWEEN 20 AND 29 THEN '20-29'
        WHEN idades BETWEEN 30 AND 39 THEN '30-39'
        WHEN idades BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END faixa_etaria,
    AVG(filho) media_filhos
FROM alunos_int
GROUP BY faixa_etaria;

SELECT
    CASE
        WHEN idades BETWEEN 10 AND 19 THEN '10-19'
        WHEN idades BETWEEN 20 AND 29 THEN '20-29'
        WHEN idades BETWEEN 30 AND 39 THEN '30-39'
        WHEN idades BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END faixa_etaria,
    COUNT(nome) quantidade_pessoas
FROM alunos_int
GROUP BY faixa_etaria;

SELECT estado,
    CASE
        WHEN idades BETWEEN 10 AND 19 THEN '10-19'
        WHEN idades BETWEEN 20 AND 29 THEN '20-29'
        WHEN idades BETWEEN 30 AND 39 THEN '30-39'
        WHEN idades BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END faixa_etaria,
    AVG(filho) media_filhos
FROM alunos_int
GROUP BY estado, faixa_etaria
HAVING AVG(filho > 0) 
ORDER BY estado, faixa_etaria DESC;

SELECT estado,
    CASE
        WHEN idades BETWEEN 10 AND 19 THEN '10-19'
        WHEN idades BETWEEN 20 AND 29 THEN '20-29'
        WHEN idades BETWEEN 30 AND 39 THEN '30-39'
        WHEN idades BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END faixa_etaria,
    AVG(filho) media_filhos
FROM alunos_int
GROUP BY estado, faixa_etaria
HAVING AVG(filho > 0) 
UNION
SELECT
    'todos' AS estado,
    'todas' AS faixa_etaria,
    AVG(filho) AS media_filhos
FROM alunos_int
ORDER BY estado, faixa_etaria DESC;


SELECT * FROM alunos_int;

SELECT
'1990-03-30' data_aniversario,
CURDATE() data_hoje, --CURRENT_DATE()
DATEDIFF(CURRENT_DATE(), '1990-03-30'),
DATE_ADD('1990-03-30', INTERVAL 40 DAY) soma_data,
DATE_FORMAT('1990-03-30', '%d/%m/%y') formato_data,
MONTHNAME('1990-03-30') nome_mes,
DAY('1990-03-30') dia,
MONTH('1990-03-30') mes,
YEAR('1990-03-30') ano,
WEEKDAY('1990-03-30') dia_semana,
DATE_FORMAT('1990-03-30', '%a') nome_dia_semana;


CREATE Table dias_semana (
    id int PRIMARY KEY,
    dia VARCHAR(15)
);

SELECT * FROM dias_semana;

INSERT INTO dias_semana VALUES 
    (0, 'segunda'),
    (1, 'terca'),
    (2, 'quarta'),
    (3, 'quinta'),
    (4, 'sexta'),
    (5, 'sabado'),
    (6, 'domingo');

SELECT 
    UPPER(dia) maiusculo,
    LOWER(dia) minusculo,
    LEFT (dia, 3) 3_primeiras_letras,
    RIGHT (dia, 3) 3_ultimas_letras,
    SUBSTRING (dia, 4, 2) meio_letras,
    LENGTH(dia) tamanho_string,
    TRIM ('   GAEL XAVIER    ') remove_espacos,
    REPLACE(dia, 'a', 'A') substituir
FROM dias_semana;

SELECT id, dia, CASE
    WHEN dia = 'segunda' THEN 'monday'
    WHEN dia = 'terca' THEN 'tuesday'
    WHEN dia = 'quarta' THEN 'wednesday'
    WHEN dia = 'quinta' THEN 'thursday'
    WHEN dia = 'sexta' THEN 'friday'
    WHEN dia = 'sabado' THEN 'saturday'
    WHEN dia = 'domingo' THEN 'sunday'
END dias_ingles FROM dias_semana;



/*Funções de númericas*/
SELECT
	RAND(0) * 10 numero_aleatorio, -- rand(semente)
    ROUND(RAND(0) * 10, 1) arredonda, -- ROUND(coluna, casas_decimais)
    CEIL(RAND(0) * 10) arredonda_cima,
    FLOOR(RAND(0) * 10) arredonda_baixo,
    POW(RAND(0) * 10,2) potencia,
    SQRT(RAND(0) * 10) raiz,
    POW(RAND(0) * 10,1/3) raiz_cubica,
    ABS(-45) negativo_p_positivo
;

/*Outras Funções*/
SELECT /*cast é modificar*/
	CAST(10 AS char(10)),/*modificar int para str*/
    '10' + 2, /*o banco faz uma concatenação*/
    CAST('10' AS UNSIGNED), /*modificar de str para int*/
    CAST('TEXTO' AS UNSIGNED), /*essa modificação não vai funcionar pq letras não viram int*/
    CAST(12.3 AS UNSIGNED), /*transforma float para int*/
    CAST(50 AS FLOAT), /*transforma int para float*/
    CAST('2022/10/31' AS DATE), /*transforma str para data*/
    CAST('20221031' AS DATE); /*transforma str para data tb*/



DROP TABLE nulos;
CREATE TABLE nulos (
  coluna1 INT,
  coluna2 INT
);

INSERT into nulos VALUES
(1,1),
(2,null),
(null,3),
(4,null),
(5,5),
(null,null),
(7,7);



SELECT * FROM nulos;


SELECT 
	coluna1,
    coluna2,
	COALESCE(coluna1,coluna2) completa_nulos,
    ISNULL(coluna1),
    IFNULL(coluna1, 'vazio')
FROM nulos;

CREATE TABLE funcionario (
    id INT PRIMARY KEY,
    id_gestor INT,
    nome VARCHAR (10),
    CONSTRAINT FK_funcionario FOREIGN KEY(id_gestor) REFERENCES funcionario(id)
);

CREATE TABLE vagas (
    id INT PRIMARY KEY,
    id_funcionario INT,
    vaga char(3),
    CONSTRAINT FK_funcionario2 FOREIGN KEY (id_funcionario) REFERENCES funcionario(id)
);

INSERT INTO funcionario VALUES
    (001, NULL,'Raissa'),
    (002, 001,'Gael'),
    (003, 001,'Aurora');

INSERT INTO vagas VALUES
(1, 2, '101'),
(2, 1, '102'),
(3, NULL, '103');


SELECT * FROM vagas;

SELECT * FROM funcionario;

SELECT 
    funcionario.nome, 
    vagas.vaga 
FROM vagas JOIN funcionario 
    ON vagas.id_funcionario = funcionario.id;

SELECT 
    funcionario.nome, 
    vagas.vaga 
FROM vagas LEFT JOIN funcionario 
    ON vagas.id_funcionario = funcionario.id;

SELECT 
    funcionario.nome, 
    vagas.vaga 
FROM vagas RIGHT JOIN funcionario 
    ON vagas.id_funcionario = funcionario.id;


SELECT 
    funcionario.nome, 
    vagas.vaga 
FROM vagas LEFT JOIN funcionario 
    ON vagas.id_funcionario = funcionario.id
UNION
SELECT 
    funcionario.nome, 
    vagas.vaga 
FROM vagas RIGHT JOIN funcionario 
    ON vagas.id_funcionario = funcionario.id;

SELECT * FROM vagas CROSS JOIN funcionario; /*esse cross join eu nao entendi mt*/

SELECT
    tb_esquerda.nome AS funcionario,
    tb_direita.nome AS gestor
FROM funcionario AS tb_esquerda
JOIN funcionario AS tb_direita
    ON tb_esquerda.id_gestor = tb_direita.id;



