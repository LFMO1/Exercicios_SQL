USE RecursosHumanos1

--1�Exiba o nome e o sal�rio dos funcion�rios, acrescentando o valor do "Pi" aos sal�rios.
SELECT nome, salario+PI()
	FROM Funcionario

--2�Mostre a raiz quadrada do dia de nascimento dos funcion�rios de Valinhos
SELECT SQRT(DAY(dataNascto))
	FROM Funcionario
	WHERE cidade='valinhos'

--3�Exiba o logaritmo do m�s de nascimento dos funcion�rios que nasceram em 1990.
SELECT LOG(MONTH(dataNascto))
	FROM Funcionario
	WHERE YEAR(dataNascto)=1990

--4�Exiba nome e dia de nascimento dos funcion�rios para os quais a pot�ncia do dia de nascimento elevado a 3 seja maior ou igual a 1000
SELECT nome, DAY(dataNascto)
	FROM Funcionario
	WHERE POWER(DAY(dataNascto),3)>=1000
	
--5�Exiba o sal�rio dos funcion�rios acrescido de 15,5%, arredondando para sem casa decimal e maiores que 1000.
SELECT salario*ROUND(15,5)
	FROM Funcionario

--6�Mostre o valor absoluto de 1500 menos o sal�rio dos funcion�rios.
SELECT ABS(1500)-salario
	FROM Funcionario

--7�Exiba o idFuncionario e a raiz quadrada do idFuncionario dos funcion�rios que nasceram antes de abril de 1989.
SELECT idFuncionario, SQRT(idFuncionario)
	FROM Funcionario
	WHERE YEAR(dataNascto)<=1989 AND MONTH(dataNascto) <=4

--8� Exiba o nome e o sal�rio dos funcion�rios com desconto de 35%, arredondando para uma casa decimal.
SELECT nome, ROUND(salario*0.35,1,1)
	FROM Funcionario

--9�Apresente o logaritmo do idFuncionario dos funcion�rios
SELECT LOG(idFuncionario)
	FROM Funcionario

--10�Exiba a raiz quadrada do idFuncionario dos funcion�rios.
SELECT SQRT(idFuncionario)
	FROM Funcionario

--11�Apresente o c�lculo da pot�ncia do idFuncionario dos funcion�rios elevado a 2.
SELECT POWER(idFuncionario,2)
	FROM Funcionario

--12�Exiba o valor absoluto do c�lculo do idFuncionario dos funcion�rios menos 10 em ordem decrescente
SELECT ABS(idFuncionario)-10
	FROM Funcionario
	ORDER BY idFuncionario DESC


