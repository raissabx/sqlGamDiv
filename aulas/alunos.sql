-- Active: 1666902262512@@127.0.0.1@3306@gama
CREATE TABLE Alunos(
	matricula char (5),
  	nome varchar(50) NOT NULL,	
  	nota1 decimal (4,2) DEFAULT 0,
  	nota2 decimal (4,2) DEFAULT 0,
  	presenca float DEFAULT 0,
  	CONSTRAINT PK_Alunos PRIMARY KEY (matricula)
);

INSERT INTO Alunos (matricula, nome, nota1, nota2, presenca) 
VALUES 
('M001', 'raissa', 8, 7, 1),
('M002', 'rafael', 8, 7, 1),
('M003', 'gael', 8, 7, 1),
('M004', 'aurora', 8, 7, 1),
('M005', 'miguel', 8, 7, 1),
('M006', 'pandora', 8, 7, 1)

SELECT * FROM `Alunos`