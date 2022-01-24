
SELECT SYSDATETIME() --data com hora, minuto e segundo, e tem uma precisão aqui depois do segundo, 82179, um bem preciso.

SELECT SYSDATETIMEOFFSET() -- -03 que ele colocou no final, é quantos fusos horários eu estou relação a Greenwich, 
--que é o fuso horário padrão da convenção que as pessoas utilizam para determinar fusos horários

SELECT SYSUTCDATETIME() --não leva em consideração o fuso horário, então ele está pegando a minha hora de Greenwich, lá do padrão 0

SELECT CURRENT_TIMESTAMP --precisão dos segundos, dos microssegundos um pouco menor

SELECT GETDATE() --vai me pegar a data atual

SELECT GETUTCDATE() -- 

SELECT DATENAME(YEAR,GETDATE()) -- retorna por extenso o nome do ano atual

SELECT DATENAME(MICROSECOND,GETDATE())-- retorna por extenso o nome do microssegundo atual

SELECT DATENAME(MINUTE,GETDATE())-- retorna por extenso o nome do minuto atual


SELECT DATENAME(MONTH,GETDATE())-- retorna por extenso o nome do mes atual

SELECT DATEPART(MONTH,GETDATE())-- retorna por extenso o nome do ano atual

SELECT DAY(GETDATE()) -- retorna por o dis atual

SELECT YEAR(GETDATE())

SELECT DATEFROMPARTS(2015,9,1) --vai me trazer a data 1 de setembro de 2015

SELECT DATENAME(MONTH,DATEFROMPARTS(2015,9,1))

SELECT DATETIME2FROMPARTS(2015,9,1,13,12,11,120,4)--criar uma data com precisão de hora, minuto, segundo, milissegundo

SELECT DATEDIFF(MONTH, DATEFROMPARTS(2015,9,1), GETDATE())--ele faz a diferença entre as datas

SELECT DATEADD(MONTH, 5, GETDATE()) pegar a data de hoje, que é abril de 2018, e vou somar 5 meses, 

SELECT ISDATE('2018-01-01') -- é uma data? 
--Retorna 1. 1 significa "TRUE", é uma data. Agora, se eu pegar aqui, será que a data 28 de 25 de 2018 é uma data? 
--Seu executar, vem 0, ou seja, falso, porque não é uma data

SELECT ISDATE('2018-25-28')

SELECT * FROM [NOTAS FISCAIS]

SELECT [DATA], CONCAT(DATENAME(DAY, [DATA]), ' ', DATENAME(MONTH, [DATA]), ' ', DATENAME(YEAR, [DATA]))
FROM [NOTAS FISCAIS]

SELECT NOME, DATEDIFF(YEAR, [DATA DE NASCIMENTO], GETDATE()) AS IDADE
FROM [TABELA DE CLIENTES] 









