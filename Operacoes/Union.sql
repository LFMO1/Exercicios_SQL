USE Empresa

--1. Mostre a descri��o e o pre�o do produto mais caro.
SELECT top 1 Descr, Preco
	FROM Produtos
	ORDER BY Preco DESC
	
--2. Apresente o n�mero e a data dos pedidos que tiveram os cinco menores fretes.

SELECT TOP 5 NumPed, DataPed
	FROM Pedidos
	ORDER BY NumPed DESC

--3. Mostre o nome e o cargo de todos os clientes e de todos os funcion�rios do Reino Unido (utilize Union).

SELECT Nome, Cargo, 'clientes' AS tipo
	FROM Clientes
	WHERE Pais = 'Reino Unido'

UNION

SELECT Nome, Cargo, 'funcion�rios' AS tipo
	FROM Funcionarios
	ORDER BY tipo


--4. Exiba o nome, o sobrenome, o cargo e o sal�rio dos tr�s funcion�rios que recebem o maior sal�rio.

SELECT top 3  salario, nome, sobrenome, cargo
	FROM Funcionarios
	ORDER BY Salario DESC


--5. Exiba o nome e o sobrenome do funcion�rio mais velho.
SELECT top 1 nome, sobrenome
	FROM Funcionarios
	ORDER BY DataNasc



--6. Mostre todos os dados dos cinco pedidos mais recentes.

SELECT top 5 *
	FROM Pedidos
	ORDER BY DataPed


--7. Mostre todos os dados dos seis �ltimos pedidos do ano de 1996.

SELECT top 6 *
	FROM Pedidos
	WHERE year(DataPed) =1996
	ORDER BY DataPed DESC




--8. Exiba o nome e o cargo de todos os funcion�rios dos EUA e o contato e o cargo de todos os fornecedores dos EUA (Usando Union).

SELECT nome, cargo, 'funcionario' AS tipo
	FROM Funcionarios

UNION

SELECT contato, cargo, 'fornecedores' as tipo
	FROM Fornecedores
	ORDER BY tipo


--9. Apresente nome, contato e pa�s de todos os clientes do Brasil e da Alemanha (Usando Union).

SELECT nome, contato, pais
	FROM Clientes
	WHERE pais = 'Brasil'

UNION

SELECT nome, contato, pais
	FROM Clientes
	WHERE pais = 'Alemanha'


--10. Exiba nome, contato e cidade de todos os clientes de Madrid e de Paris (Usando Union).

SELECT nome, contato, cidade
	FROM Clientes
	WHERE cidade ='Madrid'

UNION

SELECT nome, contato, cidade
	FROM Clientes
	WHERE cidade ='Paris'


--11. Mostre a descri��o e o pre�o dos produtos das categorias 2 e 4 (Usando Union).
SELECT descr, preco
	FROM  Produtos
	WHERE CodCategoria in (2,4)
	
UNION

SELECT descr
	FROM Produtos



--12. Exiba o nome, o cargo e o pa�s de todos os funcion�rios do Reino Unido e o contato, o cargo e o pa�s de todos os fornecedores da Fran�a.
SELECT nome, cargo, pais, 'funcionarios' as tipo
	FROM Funcionarios
	WHERE pais ='Reino Unido'

UNION

SELECT contato, cargo, pais, 'fornecedores' as tipo
	FROM Fornecedores
	WHERE pais = 'Fran�a'
