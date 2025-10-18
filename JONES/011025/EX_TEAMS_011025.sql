-- EX 1: CRIAR TBL PROF E INSERIR DADOS

--drop table professores

create table Professores (
ID INT IDENTITY (1,1) PRIMARY KEY,
NOME VARCHAR(100),
DISCIPLINA VARCHAR(15))

-- EX 2: INSERIR DADOS PROF

insert into Professores 
(NOME, DISCIPLINA)
values
('Ana Oliveira','Português')


-- EX 3: SETAR DADOS

UPDATE Professores
SET NOME='Ana Silva'
WHERE ID='1'

-- EX4: ADD DADOS EM MASSA

insert into Professores 
(NOME, DISCIPLINA)
values
('Aparecida Queiroz','Português'),
('Vandir de Queiroz', 'Física'),
('Claudia Queiroz', 'Matemática'),
('Denis Queiroz', 'Matemática'),
('Vanessa Queiroz', 'Matemática'),
('Karina Queiroz', 'Pedagogia'),
('Indiana Jones', 'Banco de Dados'),
('Professor Raimundo', 'Tudo'),
('Professor Girafales','Escolinha'),
('Seu Madruga', 'Prerigo')


/*
ALGUNS TESTES PESSOAIS

UPDATE Professores
SET DISCIPLINA='Escolinha do Chaves'
WHERE ID='10'

ALTER TABLE Professores
ALTER COLUMN Disciplina VARCHAR(20)
*/

INSERT INTO Professores
VALUES
('Professor Girafales', 'Escolinha do Chaves')

-- EX 5: EXCLUIR PROFS

DELETE FROM Professores
WHERE ID='12'


-- EX 6: CRIAR TBL 

CREATE TABLE Turmas
(ID INT IDENTITY (1,1) PRIMARY KEY,
NOME VARCHAR(50),
PROFESSOR_RESPONSAVEL INT, 
CONSTRAINT FK_PROF_RESP FOREIGN KEY (PROFESSOR_RESPONSAVEL)
REFERENCES Professores (ID))

-- EX 7

INSERT INTO Turmas
VALUES
('9A','1')

-- EX 8

INSERT INTO Turmas
VALUES
('1A','3'),
('1B','3'),
('2A','10'),
('2B','11'),
('3C','8'),
('4A','7'),
('5A','6'),
('6C','5'),
('7D','4'),
('8A','3'),
('9C','1')

DELETE FROM Turmas
WHERE ID='3'

-- EX 9

CREATE TABLE Alunos
(
ID INT IDENTITY (1,1) PRIMARY KEY,
NOME VARCHAR(50),
DATA_NASCIMENTO DATE,
TURMA_ID INT,
CONSTRAINT FK_TURMA FOREIGN KEY (TURMA_ID)
REFERENCES Turmas (ID))

-- EX 10

INSERT INTO Alunos
VALUES
('Maria Souza', '2005-10-15','1')

--EX 11

UPDATE Alunos
SET NOME='Maria da Silva'
WHERE ID='1'

--EX 12

INSERT INTO Alunos
VALUES
('Donald Trump', '2005-08-15','1'),
('Joao Santos', '2004-10-15','2'),
('Marcos Aurelio', '2005-10-15','11'),
('George Washington', '2005-12-15','12'),
('Carla Soares', '2005-10-16','7'),
('Sabotage', '2005-11-15','2'),
('Marilia Mendonça', '2005-09-17','2'),
('José Rico', '2005-10-05','4'),
('Criolo Doido', '2005-01-11','8'),
('Steven Tylen', '2005-04-25','9')

-- EX 13

DELETE FROM Alunos
WHERE ID='2'

-- EX 14

CREATE TABLE Notas
(
ID INT IDENTITY (1,1) PRIMARY KEY,
ALUNO_ID INT,
DISCIPLINA VARCHAR(15),
NOTA DECIMAL(5,2),
CONSTRAINT FK_ALUNO_ID FOREIGN KEY (ALUNO_ID)
REFERENCES Alunos(ID))

-- EX 15

INSERT INTO Notas
VALUES
('1', 'Matemática', '8.5')

-- EX 16

UPDATE Notas
SET NOTA='9.0'
WHERE ID='1'

-- EX 17
INSERT INTO Notas
Values
('1', 'Matemática', '8.5'),
('11', 'Português', '7.5'),
('1', 'Física', '6.5'),
('7', 'Matemática', '8.0'),
('6', 'Matemática', '6.0'),
('10', 'Banco de Dados', '4.5'),
('6', 'Matemática', '2.0'),
('8', 'Escolinha', '0.5'),
('1', 'Tudo', '2.5'),
('7', 'Prerigo', '8.5')

--EX 18

DELETE FROM Notas
WHERE ID='1'


-- EX 19

CREATE TABLE Matriculas
(
ID INT IDENTITY (1,1) PRIMARY KEY,
ALUNO_ID INT,
TURMA_ID INT,
DATA_MATRICULA DATE,
CONSTRAINT FK_ALUNO_ID_MT FOREIGN KEY (ALUNO_ID)
REFERENCES Alunos(ID),
CONSTRAINT FK_TURMA_ID_MT FOREIGN KEY (TURMA_ID)
REFERENCES Turmas(ID))

-- EX 20

INSERT INTO Matriculas
VALUES
('1','1','2022-02-15')

-- EX 21

INSERT INTO Matriculas
VALUES
('1','2','2022-02-15'),
('3','1','2022-02-15'),
('4','4','2022-02-15'),
('5','5','2022-02-15'),
('6','7','2022-02-15'),
('7','6','2022-02-15'),
('8','9','2022-02-15'),
('9','11','2022-02-15'),
('10','10','2022-02-15'),
('11','8','2022-02-15')



SELECT * FROM Matriculas
SELECT * FROM Notas
SELECT * FROM Professores
SELECT * FROM Turmas
SELECT * FROM Alunos