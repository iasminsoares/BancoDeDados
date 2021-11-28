
SELECT CEILING(12.333223) --traz o maior inteiro do número que está sendo usado como parâmetro da função ceil.

SELECT FLOOR(12.333223) --vou ver o menor inteiro próximo a aquele número decimal que eu estou usando como parâmetro.

SELECT RAND() --gera um número aleatório

SELECT ROUND(12.33323323, 2) --arredonda um número usando o número de precisão de casas decimais que eu colocar lá na minha função

SELECT * FROM [ITENS NOTAS FISCAIS]

SELECT [QUANTIDADE], [PREÇO], ROUND(([QUANTIDADE] * [PREÇO]),1) FROM [ITENS NOTAS FISCAIS]

SELECT YEAR(DATA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PREÇO))) 
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)