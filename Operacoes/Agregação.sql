--1. Exiba o maior e o menor sal�rios dos funcion�rios do estado de SP.
SELECT MAX(salario), MIN(salario)
	FROM Funcionario
--2. Mostre a soma dos sal�rios dos funcion�rios que t�m o sobrenome Cunha.
SELECT SUM(salario)
	FROM Funcionario
	WHERE nome LIKE '%Cunha'
--3. Exiba a m�dia dos sal�rios dos funcion�rios que t�m e-mail do "yahoo".
SELECT AVG(salario)
	FROM Funcionario
	WHERE email LIKE '%yahoo%'
	
--4. Exiba a quantidade de funcion�rios que t�m e-mail que n�o termina com "br".
SELECT COUNT(*)
	FROM Funcionario
	WHERE email NOT LIKE '%br'
--5. Exiba a menor data de nascimento dos funcion�rios.
SELECT MIN(dataNascto)
	FROM Funcionario
--6. Exiba a maior data de nascimento dos funcion�rios, denominando-a "Maior_Nascimento".
SELECT MAX(dataNascto) AS Maior_Nascimento
	FROM Funcionario
--7. Mostre a quantidade de funcion�rios da cidade de Valinhos, denominando-a "Quantidade_de_Valinhos".
SELECT cidade, COUNT(*)
	FROM Funcionario
	WHERE cidade='valinhos'
	GROUP BY cidade
--8. Exiba a soma dos sal�rios dos funcion�rios da cidade de Campinas.
SELECT SUM(salario)
	FROM Funcionario
	WHERE cidade = 'campinas'
--9. Mostre a m�dia dos sal�rios dos funcion�rios da cidade de S�o Paulo.
SELECT AVG(salario)
	FROM Funcionario
	WHERE cidade= 'S�o Paulo'
--10. Exiba a soma dos sal�rios dos funcion�rios cujos nomes come�am com "Ana".
SELECT SUM(salario)
	FROM Funcionario
	WHERE nome LIKE 'Ana%'
--11. Exiba a quantidade de funcion�rios que apresentam "Luis" no nome.
SELECT COUNT(*)
	FROM Funcionario
	WHERE nome LIKE '%Luis%'
--12. Mostre o menor e o maior sal�rios dos funcion�rios que moram na "Av. S�o Paulo".
SELECT MIN(salario), MAX(salario)
	FROM Funcionario
	WHERE endereco LIKE 'Av. S�o Paulo%'
--13. Exiba o cargo e a quantidade de funcion�rios por cargo em ordem crescente de quantidade.
SELECT cargo, COUNT(*)
	FROM Funcionario
	GROUP BY cargo 
--14. Exiba o cargo e a quantidade de funcion�rios por cargo, eliminando os cargos nulos.
SELECT cargo, COUNT(*)
	FROM Funcionario
	WHERE cargo IS NOT NULL
	GROUP BY cargo
	
--15. Apresente o cargo e a m�dia dos sal�rios (denominando de "Media_ Salarios_Cargo") dos funcion�rios por cargo.
SELECT cargo, AVG(salario) AS Media_Salarios_Cargo
	FROM Funcionario
	GROUP BY cargo

--16. Exiba o cargo e a soma dos sal�rios dos funcion�rios por cargo maiores que 3000,00.
SELECT cargo, SUM(salario)
	FROM Funcionario
	GROUP BY cargo
	HAVING SUM(salario)>3000
--17. Apresente o cargo e a soma dos sal�rios dos funcion�rios por cargo do estado de SP.
SELECT cargo, SUM(salario) 
	FROM Funcionario
	WHERE estado ='SP'
	GROUP BY cargo
--18. Altere para verdadeiro (1) o campo ativo dos funcion�rios das cidades de Jundia� e S�o Paulo.
UPDATE Funcionario SET
	ativo =1
	WHERE cidade ='Jundia�' OR cidade = 'S�o Paulo'
--19. Altere para falso (0) o campo ativo dos funcion�rios que n�o s�o das cidades de Jundia� e S�o Paulo.
UPDATE Funcionario SET
	ativo =0
	WHERE cidade != 'Jundia�' AND cidade !='S�o Paulo'
--20. Exiba o campo ativo e a quantidade de funcion�rios ativos e n�o ativos.
SELECT ativo, COUNT(*)
	FROM Funcionario
	GROUP BY ativo

--21. Apresente a cidade e a soma dos sal�rios dos funcion�rios por cidade.
SELECT cidade, SUM(salario)
	FROM Funcionario
	GROUP BY cidade
--22. Exiba a cidade e a m�dia diferente de nula dos sal�rios dos funcion�rios por cidade.
SELECT cidade, AVG(salario)
	FROM Funcionario
	WHERE cargo IS NOT NULL
	GROUP BY cidade
--23. Mostre o cargo, a soma e a m�dia dos sal�rios dos funcion�rios por cargo, cuja soma seja menor que 5000.
SELECT cargo, SUM(salario), AVG(salario)
	FROM Funcionario
	GROUP BY cargo
	HAVING COUNT(salario) <5000

--24. Exiba a cidade, o cargo, a soma e a m�dia dos sal�rios dos funcion�rios por cidade e cargo.
SELECT cidade, cargo, SUM(salario), AVG(salario)
	FROM Funcionario
	GROUP BY cidade, cargo
