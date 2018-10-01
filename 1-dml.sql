--DDL  CRIACAO DA TABELA PARA EXERCICIOS
USE CURSO;
GO

CREATE TABLE FUNCIONARIOS
(
  ID int identity(1,1) NOT NULL PRIMARY KEY, /* Not Null = Campo não pode ser vazio. Chave não pode se repetir */ 
  NOME VARCHAR(50) NOT NULL, /* Eu inseri a regra que o valor nome não pode ser nulo */
  SALARIO DECIMAL(10,2), /* 10 casas decimais, com 2 casas decimais após a vírgula */
  SETOR VARCHAR(30)
  );

--DML SELECT
--EXEMPLO SELECT
SELECT * FROM   funcionarios;
--EXEMPLO SELECT
	SELECT nome,setor /* Selecione: o nome e o setor */
	FROM   funcionarios; /* Da tabela: funcionarios */

--EXEMPLO SELECT
	SELECT nome,setor,SALARIO as depto
	FROM   funcionarios;

--DML INSERT
	INSERT INTO funcionarios VALUES  ('Joao',1000,''), ('Jose',2000,''),('Alexandre',3000,'') ;

--OU
	INSERT INTO funcionarios (nome,salario) VALUES ('Pedro',1000);



--simulando erro
   INSERT INTO funcionarios (nome,salario) VALUES ('Pedro','zaerre');

--simulando erro

  INSERT INTO funcionarios (salario) VALUES (2500);

--DML UPDATE
	UPDATE funcionarios SET    salario = '1500' 
	WHERE  id = '1';

--OU Aumento de 50% sobre Salário atual.
	UPDATE funcionarios SET    salario = salario*1.5 
	WHERE  id = '1'; 

--exemplo update com mais de um campo
	UPDATE funcionarios SET    salario = salario*1.5, setor='TI'
	WHERE  id <> '1'; 

--DML DELETE
	DELETE funcionarios 
	where id='1';


	CREATE TABLE Inquilinos (
	ID int identity(1,1) NOT NULL PRIMARY KEY, /* Not Null = Campo não pode ser vazio. Chave não pode se repetir */ 
	NOME VARCHAR(50) NOT NULL, /* Eu inseri a regra que o valor nome não pode ser nulo */
	VAluguel DECIMAL(10,2), /* 10 casas decimais, com 2 casas decimais após a vírgula */
	SETOR VARCHAR(30)
	)

	SELECT * FROM Inquilinos

	INSERT INTO Inquilinos (Nome, VAluguel) VALUES ('Décio', 1350), ('Thaís', 1100), ('Akira', 1300),
	('Ana', 1794)

	UPDATE Inquilinos SET VAluguel = VAluguel * 1.05

	Delete Inquilinos


	CREATE TABLE Inquilinoss (
	NOME VARCHAR(50),
	VAluguel DECIMAL(10,2)
	)
	SELECT NOME, VAluguel FROM Inquilinoss
	INSERT INTO Inquilinoss (NOME,VAluguel) VALUES ('Igor', 1500)
