USE RecursosHumanos1

--1ºExiba o nome e o salário dos funcionários, acrescentando o valor do "Pi" aos salários.
SELECT nome, salario+PI()
	FROM Funcionario

--2ºMostre a raiz quadrada do dia de nascimento dos funcionários de Valinhos
SELECT SQRT(DAY(dataNascto))
	FROM Funcionario
	WHERE cidade='valinhos'

--3ºExiba o logaritmo do mês de nascimento dos funcionários que nasceram em 1990.
SELECT LOG(MONTH(dataNascto))
	FROM Funcionario
	WHERE YEAR(dataNascto)=1990

--4ºExiba nome e dia de nascimento dos funcionários para os quais a potência do dia de nascimento elevado a 3 seja maior ou igual a 1000
SELECT nome, DAY(dataNascto)
	FROM Funcionario
	WHERE POWER(DAY(dataNascto),3)>=1000
	
--5ºExiba o salário dos funcionários acrescido de 15,5%, arredondando para sem casa decimal e maiores que 1000.
SELECT salario*ROUND(15,5)
	FROM Funcionario

--6ºMostre o valor absoluto de 1500 menos o salário dos funcionários.
SELECT ABS(1500)-salario
	FROM Funcionario

--7ºExiba o idFuncionario e a raiz quadrada do idFuncionario dos funcionários que nasceram antes de abril de 1989.
SELECT idFuncionario, SQRT(idFuncionario)
	FROM Funcionario
	WHERE YEAR(dataNascto)<=1989 AND MONTH(dataNascto) <=4

--8º Exiba o nome e o salário dos funcionários com desconto de 35%, arredondando para uma casa decimal.
SELECT nome, ROUND(salario*0.35,1,1)
	FROM Funcionario

--9ºApresente o logaritmo do idFuncionario dos funcionários
SELECT LOG(idFuncionario)
	FROM Funcionario

--10ºExiba a raiz quadrada do idFuncionario dos funcionários.
SELECT SQRT(idFuncionario)
	FROM Funcionario

--11ºApresente o cálculo da potência do idFuncionario dos funcionários elevado a 2.
SELECT POWER(idFuncionario,2)
	FROM Funcionario

--12ºExiba o valor absoluto do cálculo do idFuncionario dos funcionários menos 10 em ordem decrescente
SELECT ABS(idFuncionario)-10
	FROM Funcionario
	ORDER BY idFuncionario DESC


