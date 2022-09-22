CREATE DATABASE Concessionaria

USE Concessionaria

CREATE TABLE Veiculo(
chassi CHAR(17) PRIMARY KEY,
marca VARCHAR(10),
modelo VARCHAR(20),
anoDeFabricacao INT,
anoDeModelo INT,
combustivel CHAR(1)
)


ALTER TABLE	Veiculo ADD
valor money,
motor VARCHAR(20)

ALTER TABLE Veiculo
	DROP COLUMN motor

CREATE INDEX MarcaModelo
	ON Veiculo (marca, modelo)

CREATE INDEX anoFabricacao
	ON Veiculo (anoDeFabricacao DESC)

DROP INDEX MarcaModelo
	ON Veiculo

DROP TABLE Veiculo

USE master
DROP DATABASE Concessionaria


