USE RecursosHumanos1

--1� Exiba o nome e o sal�rio dos funcion�rios, acrescentando 30% ao valor do sal�rio.
SELECT nome, salario *1.30
	FROM Funcionario

--2� Exiba nome, sal�rio e sal�rio com 20% de desconto dos funcion�rios de Campinas.
SELECT nome, salario, salario *0.80
	FROM Funcionario
	WHERE cidade= 'campinas'

--3� Apresente nome e sal�rios dos funcion�rios que recebem sal�rio maior que 1500.

SELECT nome, salario
	FROM Funcionario
	WHERE salario>1500

--4� Exiba nome e cidade dos funcion�rios que n�o s�o de Valinhos
SELECT nome, cidade
	FROM Funcionario
	WHERE cidade !='Valinhos'

--5� Exiba idFuncionario e cidade dos funcion�rios de Valinhos ou Campinas.

SELECT idFuncionario, cidade
	FROM Funcionario
	WHERE cidade ='Valinhos' or cidade ='Campinas'

--6� Mostre idFuncionario, cargo e sal�rio dos funcion�rios que n�o s�o da cidade de S�o Paulo e com sal�rio maior ou igual a 1000,00.
SELECT idFuncionario, cargo, salario
	FROM Funcionario
	WHERE cidade != 'S�o Paulo' AND salario >=1000

--7� . Exiba o nome dos funcion�rios que n�o possuem cargo.
SELECT nome
	FROM Funcionario
	WHERE cargo IS NULL

--8� Exiba o nome e o sal�rio dos funcion�rios com sal�rio entre 500 e 1500.
SELECT nome, salario
	FROM Funcionario
	WHERE salario BETWEEN 500 AND 1500

--9� Exiba nome e e-mail dos funcion�rios que usam "hotmail".
SELECT nome, email
	FROM Funcionario
	WHERE email LIKE '%hotmail%'

--10� Exiba nome e e-mail dos funcion�rios que t�m e-mail do Brasil (.br), classificado pelo nome.
SELECT nome, email
	FROM Funcionario
	WHERE email LIKE '%.br'
	ORDER BY nome

--11� Exiba nome e e-mail dos funcion�rios que usam e-mail que n�o termina com ".com".
SELECT nome, email	
	FROM Funcionario
	WHERE email NOT LIKE '%com'

--12� Exiba nome e e-mails dos funcion�rios que t�m a letra "r" na terceira posi��o do nome.
SELECT nome, email
	FROM Funcionario
	WHERE email LIKE '__r%'