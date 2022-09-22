USE RecursosHumanos1

--1ºExiba o nome dos funcionários em letras maiúsculas.
SELECT UPPER(nome)
	FROM Funcionario

--2ºExiba o nome do mês da data de nascimento dos funcionários, bem como a quantidade de caracteres de cada um desses meses sem repetilos
SELECT DISTINCT DATENAME(MONTH,dataNascto), LEN(MONTH(dataNascto))
	FROM Funcionario

--3º Apresente o nome dos funcionários, substituindo os espaços existentes entre nome e sobrenome por – (traço).
SELECT REPLACE(nome,' ','-')
	FROM Funcionario

--4ºExiba as três primeiras e as três últimas letras dos nomes dos funcionários.
SELECT LEFT(nome,3), RIGHT(nome,3)
	FROM Funcionario

--5ºMostre a raiz quadrada do tamanho dos nomes dos funcionários
SELECT SQRT(ASCII(nome))
	FROM Funcionario

--6ºExiba as cidades dos funcionários a partir da terceira posição com cinco posições, sem repeti-las.
SELECT DISTINCT SUBSTRING(cidade,3,5)
	FROM Funcionario

--7ºExiba os nomes dos funcionários, retirando os espaços existentes entre nomes e sobrenomes.

SELECT REPLACE(nome,' ','')
	FROM Funcionario

--8ºExiba o caractere padrão ASCII do idFuncionario dos funcionários de Campinas.
SELECT ASCII(IdFuncionario)
	FROM Funcionario
	WHERE cidade='campinas'

--9ºMostre o valor do caractere da tabela ASCII referente aos nomes dos funcionários que nasceram após o dia 20.
SELECT ASCII(nome)
	FROM Funcionario
	WHERE Day(dataNascto) >20

--10ºExiba os quatro primeiros caracteres das cidades dos funcionários sem espaço em branco no final.
SELECT LEFT(cidade,4)
	FROM Funcionario

--11º.Exiba os seis últimos caracteres das cidades dos funcionários sem espaço em branco no início.
SELECT RIGHT(cidade,6)
	FROM Funcionario

--12ºApresente o nome das cidades dos funcionários em letras minúsculas sem repeti-las.
SELECT UPPER(cidade)
	FROM Funcionario

