
SELECT CEILING(12.333223) --traz o maior inteiro do n�mero que est� sendo usado como par�metro da fun��o ceil.

SELECT FLOOR(12.333223) --vou ver o menor inteiro pr�ximo a aquele n�mero decimal que eu estou usando como par�metro.

SELECT RAND() --gera um n�mero aleat�rio

SELECT ROUND(12.33323323, 2) --arredonda um n�mero usando o n�mero de precis�o de casas decimais que eu colocar l� na minha fun��o

SELECT * FROM [ITENS NOTAS FISCAIS]

SELECT [QUANTIDADE], [PRE�O], ROUND(([QUANTIDADE] * [PRE�O]),1) FROM [ITENS NOTAS FISCAIS]

SELECT YEAR(DATA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRE�O))) 
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)