USE RecursosHumanos1

--1� Exiba nome e data de nascimento dos funcion�rios, separando dia, m�s e ano em colunas.
SELECT nome, DAY(dataNascto)
	FROM Funcionario

SELECT nome, MONTH(dataNascto)
	FROM Funcionario

SELECT nome, YEAR(dataNascto)
	FROM Funcionario 

--2� Exiba o nome dos meses da data de nascimento dos funcion�rios sem repeti-los e ordenados.
SELECT DISTINCT DATENAME(MONTH, dataNascto)
	FROM Funcionario

--3� Exiba idFuncionario e nome de todos os funcion�rios que nasceram em 1987
SELECT idFuncionario, nome
	FROM Funcionario
	WHERE YEAR(dataNascto)=1987

--4� Exiba nome e dia de nascimento dos funcion�rios que nasceram em abril de 1988.
SELECT nome, DAY(dataNascto)
	FROM Funcionario
	WHERE MONTH(dataNascto)=4 AND YEAR(dataNascto)=1988

--5� Exiba o nome e a data de nascimento dos funcion�rios acrescida de dois meses.
SELECT nome, DATEADD(MONTH, 2, dataNascto)
	FROM Funcionario

--6� Exiba o nome e a idade dos funcion�rios, calculando a idade em rela��o � data de nascimento e � data de hoje.
SELECT nome, DATEDIFF(YEAR,dataNascto, GETDATE())
	FROM Funcionario

--7� Exiba o idFuncionario, nome e ano de nascimento dos funcion�rios que nasceram entre mar�o e maio de 1990.
SELECT idFuncionario, nome, dataNascto
	FROM Funcionario
	WHERE MONTH(dataNascto) BETWEEN 3 AND 5 AND YEAR(dataNascto) =1990

--8� Exiba nome e ano de nascimento dos funcion�rios do estado de SP
SELECT nome, YEAR(dataNascto)
	FROM Funcionario
	WHERE cidade ='SP'

--9� Exiba nome e data de nascimento dos funcion�rios que nasceram antes de 1990.
SELECT nome, dataNascto
	FROM Funcionario
	WHERE YEAR(dataNascto)<1990

--10� Exiba cidade e estado dos funcion�rios que nasceram ap�s 1989, sem repetir os dados.
SELECT DISTINCT cidade, estado
	FROM Funcionario
	WHERE YEAR(dataNascto)>1989

--11� Exiba todos os dados dos funcion�rios que nasceram nos anos de 1988 e 1990
SELECT *
	FROM Funcionario
	WHERE YEAR(dataNascto) IN (1988,1990)

--12� Exiba nome dos funcion�rios que nasceram no dia 30.
SELECT nome
	FROM Funcionario
	WHERE DAY(dataNascto)=30
