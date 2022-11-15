--- 31-10-2022 14:55:21
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id)
)' at line 6 }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id)
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id)
);
*****/

--- 31-10-2022 14:55:33
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
)' at line 6 }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id)
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
*****/

--- 31-10-2022 14:55:51
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
)' at line 6 }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id)
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
*****/

--- 31-10-2022 14:56:49
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1005 (HY000): Can't create table `db299917`.`Carrinho_Produto` (errno: 150 "Foreign key constraint is incorrectly formed") }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Carrinho FOREIGN KEY (id_carrinho) REFERENCES Produto(id_carrinho)
);
*****/

--- 31-10-2022 14:58:02
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1005 (HY000): Can't create table `db299917`.`Carrinho_Produto` (errno: 150 "Foreign key constraint is incorrectly formed") }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Carrinho FOREIGN KEY (id_carrinho) REFERENCES Produto(id_carrinho)
);
*****/

--- 31-10-2022 14:58:39
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1005 (HY000): Can't create table `db299917`.`Carrinho_Produto` (errno: 150 "Foreign key constraint is incorrectly formed") }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Carrinho FOREIGN KEY (id_carrinho) REFERENCES Carrinho(id_carrinho)
);
*****/

--- 31-10-2022 15:00:19
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1005 (HY000): Can't create table `db299917`.`Carrinho_Produto` (errno: 150 "Foreign key constraint is incorrectly formed") }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
  	-- CONSTRAINT FK_Carrinho FOREIGN KEY (id_carrinho) REFERENCES Carrinho(id_carrinho)
);
*****/

--- 31-10-2022 15:00:34
--- MariaDB
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id),
  	-- CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
  	CONSTRAINT FK_Carrinho FOREIGN KEY (id_carrinho) REFERENCES Carrinho(id_carrinho)
);

--- 31-10-2022 15:01:23
--- MariaDB
DROP TABLE Carrinho_Produto;

--- 31-10-2022 15:01:32
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1005 (HY000): Can't create table `db299917`.`Carrinho_Produto` (errno: 150 "Foreign key constraint is incorrectly formed") }
 ----- 
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Carrinho FOREIGN KEY (id_carrinho) REFERENCES Carrinho(id_carrinho)
);
*****/

--- 31-10-2022 15:02:55
--- MariaDB
DROP TABLE Produto;

--- 31-10-2022 15:03:53
--- MariaDB
CREATE TABLE Produto (
	id_produto int,
  	PRIMARY KEY (id_produto)

);

--- 31-10-2022 15:04:03
--- MariaDB
CREATE TABLE Carrinho_Produto(
	id int AUTO_INCREMENT,
  	id_produto int,
  	id_carrinho int,
  	CONSTRAINT PK_Carrinho_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Carrinho FOREIGN KEY (id_carrinho) REFERENCES Carrinho(id_carrinho)
);

--- 31-10-2022 15:07:23
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1005 (HY000): Can't create table `db299917`.`Fornecedor_Produto` (errno: 150 "Foreign key constraint is incorrectly formed") }
 ----- 
CREATE TABLE Fornecedor_Produto(
	id int,
  	id_produto int,
  	id_fornecedor int,
  	CONSTRAINT PK_Fornecedor_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Fornecedor FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);
*****/

--- 31-10-2022 15:07:58
--- MariaDB
DROP TABLE Fornecedor;

--- 31-10-2022 15:08:03
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3 }
 ----- 
CREATE TABLE Fornecedor (
	id_fornecedor int,
  	PRIMARY KEY (id_fornecedor);
*****/

--- 31-10-2022 15:08:08
--- MariaDB
CREATE TABLE Fornecedor (
	id_fornecedor int,
  	PRIMARY KEY (id_fornecedor)

);

--- 31-10-2022 15:08:14
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1005 (HY000): Can't create table `db299917`.`Fornecedor_Produto` (errno: 121 "Duplicate key on write or update") }
 ----- 
CREATE TABLE Fornecedor_Produto(
	id int,
  	id_produto int,
  	id_fornecedor int,
  	CONSTRAINT PK_Fornecedor_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Fornecedor FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);
*****/

--- 31-10-2022 15:09:30
--- MariaDB
CREATE TABLE Fornecedor_Produto(
	id int,
  	id_produto int,
  	id_fornecedor int,
  	CONSTRAINT PK_Fornecedor_Produto PRIMARY KEY (id),
  	CONSTRAINT FK_Produto_ FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
  	CONSTRAINT FK_Fornecedor FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

--- 31-10-2022 15:20:59
--- MariaDB
ALTER TABLE Cliente ADD nome varchar(55);

--- 31-10-2022 15:23:00
--- MariaDB
INSERT INTO Cliente (id_cliente, nome) VALUES (1, 'raissa');

--- 31-10-2022 15:23:32
--- MariaDB
SELECT id_cliente, nome FROM Cliente;

--- 31-10-2022 15:25:44
--- MariaDB
insert into Cliente VALUES
(2, 'rafael'),
(3, 'aurora'),
(4, 'gael');

--- 31-10-2022 15:25:50
--- MariaDB
SELECT * FROM Cliente;

--- 31-10-2022 15:26:32
--- MariaDB
INSERT INTO Cliente VALUES
(5, 'pandora'),
(6, 'miguel');

--- 31-10-2022 15:26:37
--- MariaDB
SELECT * FROM Cliente;

--- 31-10-2022 15:50:05
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1054 (42S22): Unknown column 'id' in 'where clause' }
 ----- 
UPDATE Cliente SET 
	nome = 'jose'
WHERE id = 6;
*****/

--- 31-10-2022 15:50:58
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1054 (42S22): Unknown column 'id' in 'where clause' }
 ----- 
UPDATE Cliente SET 
	nome = 'jose'
WHERE id = 6;
*****/

--- 31-10-2022 15:51:26
--- MariaDB
UPDATE Cliente SET 
	nome = 'jose'
WHERE id_cliente = 6;

--- 31-10-2022 15:51:32
--- MariaDB
SELECT * FROM Cliente;

--- 31-10-2022 15:51:56
--- MariaDB
UPDATE Cliente SET 
	nome = 'miguel'
WHERE id_cliente = 6;

--- 31-10-2022 15:52:10
--- MariaDB
INSERT INTO Cliente (id_cliente, nome) VALUES (7, 'jose');

--- 31-10-2022 15:52:12
--- MariaDB
SELECT * FROM Cliente;

--- 31-10-2022 15:52:36
--- MariaDB
INSERT INTO Cliente (id_cliente, nome) VALUES (8, 'rafaela');

--- 31-10-2022 15:52:38
--- MariaDB
SELECT * FROM Cliente;

--- 31-10-2022 15:53:55
--- MariaDB
DELETE FROM Cliente
WHERE id_cliente = 8;

--- 31-10-2022 15:54:02
--- MariaDB
SELECT * FROM Cliente;

--- 31-10-2022 17:02:13
--- MariaDB
CREATE TABLE Alunos(
	matricula char (5),
  	nome varchar(50) NOT NULL,	
  	nota1 decimal (4,2) DEFAULT 0,
  	nota2 decimal (4,2) DEFAULT 0,
  	presenca float DEFAULT 0,
  	CONSTRAINT PK_Alunos PRIMARY KEY (matricula)
);

--- 31-10-2022 17:03:59
--- MariaDB
ALTER TABLE Alunos add CONSTRAINT CK_maiorq0_menorq10 CHECK (nota1 >= 0 AND nota1<= 10);
ALTER TABLE Alunos add CONSTRAINT CK2_maiorq0_menorq10 CHECK (nota2 >= 0 AND nota2<= 10);
ALTER TABLE Alunos add CONSTRAINT CK_entre0_1 CHECK (presenca >= 0 AND presenca<= 1);

--- 31-10-2022 17:04:14
--- MariaDB
SELECT * FROM Alunos;

--- 31-10-2022 17:06:33
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1054 (42S22): Unknown column 'M001' in 'field list' }
 ----- 
INSERT INTO Alunos VALUES 
(M001, 'raissa', 8, 7, 1),
(M002, 'rafael', 8, 7, 1),
(M003, 'gael', 8, 7, 1),
(M004, 'aurora', 8, 7, 1),
(M005, 'miguel', 8, 7, 1),
(M006, 'pandora', 8, 7, 1);
*****/

--- 31-10-2022 17:06:48
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1054 (42S22): Unknown column 'M0001' in 'field list' }
 ----- 
INSERT INTO Alunos VALUES 
(M0001, 'raissa', 8, 7, 1),
(M0002, 'rafael', 8, 7, 1),
(M0003, 'gael', 8, 7, 1),
(M0004, 'aurora', 8, 7, 1),
(M0005, 'miguel', 8, 7, 1),
(M0006, 'pandora', 8, 7, 1);
*****/

--- 31-10-2022 17:07:35
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1054 (42S22): Unknown column 'M0001' in 'field list' }
 ----- 
INSERT INTO Alunos VALUES 
(M0001, 'raissa', 8.00, 7.00, 1),
(M0002, 'rafael', 8.00, 7.00, 1),
(M0003, 'gael', 8.00, 7.00, 1),
(M0004, 'aurora', 8.00, 7.00, 1),
(M0005, 'miguel', 8.00, 7.00, 1),
(M0006, 'pandora', 8.00, 7.00, 1);
*****/

--- 31-10-2022 17:07:59
--- MariaDB
/***** ERROR ******
MySqlError { ERROR 1054 (42S22): Unknown column 'M0001' in 'field list' }
 ----- 
INSERT INTO Alunos VALUES 
(M0001, 'raissa', 8.00, 7.00, 1),
(M0002, 'rafael', 8.00, 7.00, 1),
(M0003, 'gael', 8.00, 7.00, 1),
(M0004, 'aurora', 8.00, 7.00, 1),
(M0005, 'miguel', 8.00, 7.00, 1),
(M0006, 'pandora', 8.00, 7.00, 1);
*****/

--- 31-10-2022 17:08:34
--- MariaDB
INSERT INTO Alunos VALUES 
('M0001', 'raissa', 8.00, 7.00, 1),
('M0002', 'rafael', 8.00, 7.00, 1),
('M0003', 'gael', 8.00, 7.00, 1),
('M0004', 'aurora', 8.00, 7.00, 1),
('M0005', 'miguel', 8.00, 7.00, 1),
('M0006', 'pandora', 8.00, 7.00, 1);

--- 31-10-2022 17:08:39
--- MariaDB
SELECT * FROM Alunos;

