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


--1º Insira os dados:
INSERT INTO Funcionario 
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)

VALUES
(5, 'Carlos Dias', 'Av. Lap, 121', 'Itu', 'SP', 'carlao@gmail.com', '31-03-1990'),
(6, 'Ana Maria da Cunha', 'Av. São Paulo, 388', 'Itu', 'SP', 'aninha@gmail.com', '12-04-1988'),
(7, 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '04-12-1988'),
(8, 'Marcela Tatho', 'Rua Bélgica, 43', 'Campinas', 'SP', 'marctatho@hotmail.com', '09-11-1987'),
(9, 'Jorge Luís Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '05-05-1990'),
(10, 'Ana Paulo Camargo', 'Rua Costa e Silva, 33', 'Jundiaí', 'SP', 'apcamargo@gmail.com', '30-06-1991'),
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '11-04-1987'),
(12, 'Carlos Luís de Souza', 'Rua Nicolau Coelho, 22', 'São Paulo', 'SP', 'cls@bol.com.br', '30-04-1988')

--2º Altere para Valinhos os funcionários da cidade de Itu.
UPDATE Funcionario SET
cidade = 'Valinhos'
WHERE cidade = 'Itu'

--3º Altere os valores das colunas Cargo e Salário de acordo com a cidade:
UPDATE Funcionario SET
cargo = 'AI', salario = 1100
WHERE cidade = 'Valinhos'

UPDATE Funcionario SET
cargo = 'PC', salario = 1700
WHERE cidade = 'Campinas'

UPDATE Funcionario SET
cargo = 'TI', salario = 750
WHERE cidade = 'Jundiaí'

--4º Exiba nome e cargo de todos os funcionários
SELECT nome,cargo
FROM Funcionario
ORDER BY nome

--5º Exiba idFuncionario e e-mail dos funcionários do estado de SP.
SELECT idFuncionario, email
FROM Funcionario
WHERE estado = 'SP'

--6º Apague o funcionário 5.
DELETE FROM Funcionario
WHERE idFuncionario = 5

--7º Exiba a cidade e o estado de todos os funcionários com cargo "PC", sem repeti-los. 
Select DISTINCT cidade, estado
FROM Funcionario
WHERE cargo='PC'



