CREATE DATABASE RecursosHumanos

USE RecursosHumanos

CREATE TABLE Funcionario (
idFuncionario INT NOT NULL,
nome VARCHAR(50) NULL,
endereco VARCHAR(100) NULL,
cidade VARCHAR(50) NULL,
estado CHAR(2) NULL,
email VARCHAR(50) NULL UNIQUE,
dataNascto DATE NULL,
PRIMARY KEY(idFuncionario)
) 

ALTER TABLE Funcionario ADD
salario DECIMAL(7,2) NULL,
cargos VARCHAR(2) NULL

ALTER TABLE Funcionario
DROP COLUMN cargos

ALTER TABLE Funcionario ADD
cargo VARCHAR(2) NULL,
ativo BIT


--1� Insira os dados:
INSERT INTO Funcionario 
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)

VALUES
(5, 'Carlos Dias', 'Av. Lap, 121', 'Itu', 'SP', 'carlao@gmail.com', '31-03-1990'),
(6, 'Ana Maria da Cunha', 'Av. S�o Paulo, 388', 'Itu', 'SP', 'aninha@gmail.com', '12-04-1988'),
(7, 'Cl�udia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '04-12-1988'),
(8, 'Marcela Tatho', 'Rua B�lgica, 43', 'Campinas', 'SP', 'marctatho@hotmail.com', '09-11-1987'),
(9, 'Jorge Lu�s Rodrigues', 'Av. da Saudade, 1989', 'S�o Paulo', 'SP', 'jorgeluis@yahoo.com.br', '05-05-1990'),
(10, 'Ana Paulo Camargo', 'Rua Costa e Silva, 33', 'Jundia�', 'SP', 'apcamargo@gmail.com', '30-06-1991'),
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '11-04-1987'),
(12, 'Carlos Lu�s de Souza', 'Rua Nicolau Coelho, 22', 'S�o Paulo', 'SP', 'cls@bol.com.br', '30-04-1988')

--2� Altere para Valinhos os funcion�rios da cidade de Itu.
UPDATE Funcionario SET
cidade = 'Valinhos'
WHERE cidade = 'Itu'

--3� Altere os valores das colunas Cargo e Sal�rio de acordo com a cidade:
UPDATE Funcionario SET
cargo = 'AI', salario = 1100
WHERE cidade = 'Valinhos'

UPDATE Funcionario SET
cargo = 'PC', salario = 1700
WHERE cidade = 'Campinas'

UPDATE Funcionario SET
cargo = 'TI', salario = 750
WHERE cidade = 'Jundia�'

--4� Exiba nome e cargo de todos os funcion�rios
SELECT nome,cargo
FROM Funcionario
ORDER BY nome

--5� Exiba idFuncionario e e-mail dos funcion�rios do estado de SP.
SELECT idFuncionario, email
FROM Funcionario
WHERE estado = 'SP'

--6� Apague o funcion�rio 5.
DELETE FROM Funcionario
WHERE idFuncionario = 5

--7� Exiba a cidade e o estado de todos os funcion�rios com cargo "PC", sem repeti-los. 
Select DISTINCT cidade, estado
FROM Funcionario
WHERE cargo='PC'



