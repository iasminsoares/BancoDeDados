
SELECT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS]

SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS]

SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] WHERE
[SABOR] = 'Laranja'

SELECT DISTINCT EMBALAGEM, TAMANHO, SABOR FROM [TABELA DE PRODUTOS]

SELECT DISTINCT TOP 3 BAIRRO, CIDADE FROM  [TABELA DE CLIENTES] WHERE ESTADO = 'RJ'

SELECT TOP 10 * FROM [NOTAS FISCAIS] WHERE [DATA] = '2017-01-01'

A DISTINCT vai consolidar todos os registros que possuem uma combinação igual, ou seja, quem tem valores iguais, em vez de aparecer N vezes, vai aparecer uma vez só.
Ou seja, o DISTINCT só vai retornar valores das linhas das tabelas que são diferentes. E o DISTINCT eu não vou usar ele em um WHERE, por exemplo, WHERE DISTINCT alguma coisa.
