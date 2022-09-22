USE RecursosHumanos1

--1º Exiba o nome e o salário dos funcionários, acrescentando 30% ao valor do salário.
SELECT nome, salario *1.30
	FROM Funcionario

--2º Exiba nome, salário e salário com 20% de desconto dos funcionários de Campinas.
SELECT nome, salario, salario *0.80
	FROM Funcionario
	WHERE cidade= 'campinas'

--3º Apresente nome e salários dos funcionários que recebem salário maior que 1500.

SELECT nome, salario
	FROM Funcionario
	WHERE salario>1500

--4º Exiba nome e cidade dos funcionários que não são de Valinhos
SELECT nome, cidade
	FROM Funcionario
	WHERE cidade !='Valinhos'

--5º Exiba idFuncionario e cidade dos funcionários de Valinhos ou Campinas.

SELECT idFuncionario, cidade
	FROM Funcionario
	WHERE cidade ='Valinhos' or cidade ='Campinas'

--6º Mostre idFuncionario, cargo e salário dos funcionários que não são da cidade de São Paulo e com salário maior ou igual a 1000,00.
SELECT idFuncionario, cargo, salario
	FROM Funcionario
	WHERE cidade != 'São Paulo' AND salario >=1000

--7º . Exiba o nome dos funcionários que não possuem cargo.
SELECT nome
	FROM Funcionario
	WHERE cargo IS NULL

--8º Exiba o nome e o salário dos funcionários com salário entre 500 e 1500.
SELECT nome, salario
	FROM Funcionario
	WHERE salario BETWEEN 500 AND 1500

--9º Exiba nome e e-mail dos funcionários que usam "hotmail".
SELECT nome, email
	FROM Funcionario
	WHERE email LIKE '%hotmail%'

--10º Exiba nome e e-mail dos funcionários que têm e-mail do Brasil (.br), classificado pelo nome.
SELECT nome, email
	FROM Funcionario
	WHERE email LIKE '%.br'
	ORDER BY nome

--11º Exiba nome e e-mail dos funcionários que usam e-mail que não termina com ".com".
SELECT nome, email	
	FROM Funcionario
	WHERE email NOT LIKE '%com'

--12º Exiba nome e e-mails dos funcionários que têm a letra "r" na terceira posição do nome.
SELECT nome, email
	FROM Funcionario
	WHERE email LIKE '__r%'