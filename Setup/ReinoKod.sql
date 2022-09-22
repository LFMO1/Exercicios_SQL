CREATE DATABASE ReinoKod

USE ReinoKod

CREATE TABLE Produtos (
codigo_produto int NOT NULL,
nome_produto varchar(255),
preco_unitario int, 
PRIMARY KEY(codigo_produto));

CREATE TABLE DestinoExportacao(
codigo_dest int NOT NULL,
nome_dest varchar(255), 
PRIMARY KEY(codigo_dest)
);

CREATE TABLE Vendas(
codigo_relatorio int NOT NULL,
data DATE,
codigo_dest int NOT NULL,
PRIMARY KEY (codigo_relatorio));

ALTER TABLE Vendas add constraint FK2VENDAS foreign key (codigo_dest)
references DestinoExportacao (codigo_dest)

CREATE TABLE DetalhesVendas(
codigo_relatorio int NOT NULL,
codigo_produto int NOT NULL,
Quantidade int NOT NULL);

ALTER TABLE DetalhesVendas add constraint FK1DETALHESVENDAS foreign key (codigo_produto)
references Produtos (codigo_produto)

ALTER TABLE DetalhesVendas add constraint FK2DETALHESVENDAS foreign key (codigo_relatorio)
references Vendas (codigo_relatorio)


INSERT INTO Produtos
VALUES
(101,'Melão', 800),
(102,'Morango',150),
(103,'Maçã',120),
(104,'Limão',200)
	
INSERT INTO DestinoExportacao
VALUES
(12,'Reino de Minami'),
(23,'Império Alfa'),
(25,'Reino de Ritol')

INSERT INTO Vendas
VALUES
(1101,'1990-05-03',12),
(1102,'1990-07-03',23),
(1103,'1990-08-03',25),
(1104,'1990-10-03',12),
(1105,'1990-12-03',25)


INSERT INTO DetalhesVendas
VALUES
(1101,101,1100),
(1101,102,300),
(1102,103,1700),
(1103,104,500),
(1104,101,2500),
(1105,103,2000),
(1105,104,700)


SELECT * FROM Produtos
WHERE codigo_produto IN 
(SELECT codigo_produto
FROM DetalhesVendas
WHERE Quantidade>=1000)

SELECT *
FROM DetalhesVendas U
WHERE Quantidade>
(SELECT AVG(Quantidade)
FROM DetalhesVendas
WHERE codigo_produto=U.codigo_produto)



SELECT *
	FROM Produtos

SELECT *
	FROM Vendas

SELECT *
	FROM DestinoExportacao

SELECT *
	FROM DetalhesVendas
