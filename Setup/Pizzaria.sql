CREATE DATABASE PizzariaFatec
GO

USE PizzariaFatec
GO

CREATE TABLE Cliente(
	telefone		VARCHAR(11),
	celular			VARCHAR(11),
	cidade			VARCHAR(30),
	estado			VARCHAR(2),
	end_numero		INT NOT NULL,
	end_bairro		VARCHAR(30),
	end_cep			INT NOT NULL,
	end_logradouro  VARCHAR(30),
	end_complemento VARCHAR(30),
	cpf				VARCHAR(11),
	id_usuario		INT IDENTITY(1,1) NOT NULL,
	email			VARCHAR(50),
	senha			VARCHAR(50),
	nome			VARCHAR(100)
PRIMARY KEY(id_usuario)
)


CREATE TABLE Pedido(
	data_hora		DATE,
	numero_pedido	INT IDENTITY(1,1) NOT NULL,
	tipo_pagamento  VARCHAR(20),
	id_usuario		INT NOT NULL,
PRIMARY KEY(numero_pedido),
FOREIGN KEY(id_usuario) REFERENCES Cliente(id_usuario)
)


CREATE TABLE Administrador(
	id_usuario	INT IDENTITY(1,1) NOT NULL,
	email		VARCHAR(50),
	senha		VARCHAR(30),
	nome		VARCHAR(100),
PRIMARY KEY(id_usuario)
)

CREATE TABLE Categoria(
	id_categoria	INT IDENTITY(1,1) NOT NULL,
	nome_categoria  VARCHAR(30),
PRIMARY KEY(id_categoria)
)

CREATE TABLE Produto(
	nome		 VARCHAR(100),
	id_produto   INT IDENTITY(1,1) NOT NULL,
	preco		 DECIMAL(4,2),
	descricao    VARCHAR(100),
	imagem		 VARCHAR(50),
	id_categoria INT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(id_categoria) REFERENCES Categoria(id_categoria)
)

CREATE TABLE Itens_pedido(
	quantidade	  INT NOT NULL,
	preco		  DECIMAL(4,2),
	numero_pedido INT NOT NULL,
	id_produto    INT NOT NULL,
FOREIGN KEY(numero_pedido) REFERENCES Pedido(numero_pedido),
FOREIGN KEY(id_produto) REFERENCES Produto(id_produto)
)

