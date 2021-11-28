SELECT * FROM [dbo].[TABELA DE CLIENTES]

SELECT ESTADO,  [LIMITE DE CREDITO] FROM [dbo].[TABELA DE CLIENTES]

--Apresenta o resultado agrupando valores num�ricos por uma chave de crit�rio.

SELECT ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT ESTADO, AVG([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT EMBALAGEM, MIN([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT [NOME DO PRODUTO], EMBALAGEM  FROM [TABELA DE PRODUTOS] ORDER BY EMBALAGEM

SELECT EMBALAGEM, COUNT(*) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT BAIRRO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] 
WHERE [ESTADO]  = 'SP' GROUP BY BAIRRO

SELECT BAIRRO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] 
WHERE [ESTADO]  = 'SP' GROUP BY BAIRRO ORDER BY BAIRRO DESC

SELECT BAIRRO, ESTADO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] 
WHERE [ESTADO]  = 'SP' GROUP BY BAIRRO, ESTADO

SELECT COUNT(*) FROM [ITENS NOTAS FISCAIS]
WHERE [CODIGO DO PRODUTO] = '1101035'
AND QUANTIDADE = 99


--A fun��o HAVING, ela � aplicada para que n�s possamos fazer um filtro com condi��es sobre o resultado de um GROUP BY.

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]), MIN([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PRE�O DE LISTA]) <= 80

SELECT EMBALAGEM, MAX([PRE�O DE LISTA]), MIN([PRE�O DE LISTA]) FROM [TABELA DE PRODUTOS] 
GROUP BY EMBALAGEM HAVING SUM([PRE�O DE LISTA]) <= 80 AND MAX([PRE�O DE LISTA]) >= 6

SELECT CPF, COUNT(*) FROM [NOTAS FISCAIS] WHERE YEAR(DATA) = 2016 
GROUP BY CPF HAVING COUNT(*) > 2000



