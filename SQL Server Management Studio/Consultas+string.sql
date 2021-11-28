
SELECT LTRIM('      OLA') -- tira os espaços em branco que estão a esquerda de um caractere

SELECT RTRIM('OLA      ')  -- tira os espaços em branco que estão a direita de um caractere


SELECT CONCAT('OLA ','TUDO BEM') -- juntar duas strings

SELECT 'OLA ' + 'TUDO BEM' -- juntar duas strings

SELECT LEFT('RUA AUGUSTA',3) -- seleciona as 3 primeiros caracteres 

SELECT RIGHT('RUA AUGUSTA',7) -- seleciona as 7 ultimos caracteres 

SELECT UPPER('rua augusta')  -- transforma de minúsculas para maiúsculas o meu string

SELECT LOWER('RUA AUGUSTA')   transforma de maiúsculas para minúsculas o meu string

SELECT REPLACE('R. AUGUSTA','R.','RUA') -- substitui um determinado string por outro
o meu string, então eu coloco o string que eu quero trabalhar, o trecho que eu tenho que buscar e quem eu preciso substituir.

SELECT SUBSTRING('RUA AUGUSTA', 1, 3) --ela pega um pedaço do meu string, dou o nome do string, 
a posição onde eu vou começar a extrair o meu resultado e o número de casas para frente

SELECT SUBSTRING('RUA AUGUSTA', 2, 4) 

SELECT LEN('RUA AUGUSTA') --devolve o número de caracteres que eu tenho dentro no meu string

SELECT * FROM [TABELA DE CLIENTES]

SELECT CONCAT(NOME, ' (', CPF, ') ') FROM [TABELA DE CLIENTES]
SELECT NOME, CONCAT([ENDERECO 1], ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM [TABELA DE CLIENTES]

SELECT CONCAT(NOME, ' - ', [ENDERECO 1], ' - ', BAIRRO, ' - ', CIDADE, ' - ', ESTADO) FROM [TABELA DE CLIENTES]









