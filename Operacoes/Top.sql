--1. Exiba o nome dos quatro primeiros funcion�rios.
SELECT TOP 4 nome
	FROM Funcionario

--2. Exiba todos os dados de dois funcion�rios da cidade de Valinhos.
SELECT TOP 2 *
	FROM Funcionario
	WHERE cidade='Valinhos'

--3. Apresente nome e data de nascimento de um funcion�rio mais velho.
SELECT TOP 1 nome, dataNascto	
	FROM Funcionario
	ORDER BY dataNascto DESC 

--4. Exiba duas cidades e quantidade de funcion�rios por cidade.
SELECT TOP 2 cidade, COUNT(*)
	FROM Funcionario
	GROUP BY cidade

--5. Apresente dois cargos e quantidade de funcion�rios por cargo.
SELECT TOP 2 cargo, COUNT(*)
	FROM Funcionario
	GROUP BY cargo

--6. Exiba todos os dados de 30% dos funcion�rios.
SELECT TOP 30 PERCENT*
	FROM Funcionario

--7. Mostre o nome e o e-mail de seis funcion�rios.
SELECT TOP 6 nome, email
	FROM Funcionario

--8. Exiba idFuncionario, cargo e ativo de 70% dos funcion�rios.
SELECT TOP 70 PERCENT idFuncionario, cargo, ativo	
	FROM Funcionario


--9. Exiba idFuncionario e sal�rio do menor sal�rio n�o nulo de um funcion�rio.
SELECT TOP 1 idFuncionario, salario
	FROM Funcionario
	WHERE salario IS NOT NULL

--10. Mostre nome e sal�rio do maior sal�rio de um funcion�rio.
SELECT TOP 1 nome, MAX(salario)
	FROM Funcionario
	GROUP BY nome

--11. Exiba nome e endere�o do primeiro funcion�rio.
SELECT TOP 1 nome, endereco 
	FROM Funcionario

--12. Exiba todos os dados de 90% dos funcion�rios.
SELECT TOP 90 PERCENT *
	FROM Funcionario

--13. Apresente todos os dados de um funcion�rio da cidade de S�o Paulo.
SELECT *
	FROM Funcionario
	WHERE cidade='S�o Paulo'

--14. Mostre nome, endere�o, cidade e estado de 20% dos funcion�rios.
SELECT TOP 20 PERCENT nome, endereco, cidade, estado
	FROM Funcionario

--15. Exiba todos os dados de dois funcion�rios que nasceram no ano de 1988.
SELECT TOP 2 *
	FROM Funcionario
	WHERE YEAR(dataNascto) <=1988