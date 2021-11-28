O comando UNION, ele  junta duas consultas SELECT. Essas duas tabelas, elas podem ser tabelas realmente do banco de dados ou resultantes de um JOIN.
o UNION eu tenho que aplicá-lo obrigatoriamente em campos que são do mesmo tipo, ou seja, se na tabela de baixo o identificador fosse um string,
ou fosse um outro tipo diferente da coluna identificador da primeira consulta, o UNION daria erro.
Eu só posso fazer UNION em consultas cujas as colunas possuem a mesma ordem e os mesmos tipos. 
O nome das colunas pode ser outro, não tem nenhum problema, mas os tipos devem ser os mesmos.S
Se eu tenho dois registros que aparecem iguais nas duas consultas, quando eu tenho a minha consulta final, esses registros viram só um registro apenas.
Porém, se eu usar o que nós chamamos de UNION ALL ao invés de UNION, os dois registros, eles continuam duplicados. 
Então, o UNION ALL é como se eu não aplicasse o DISTINCT sobre o resultado final.


SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]

SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]
UNION
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].[BAIRRO], [TABELA DE CLIENTES].[DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].[NOME] FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].[BAIRRO], [TABELA DE CLIENTES].[NOME] FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].[NOME] FROM [TABELA DE VENDEDORES]

SELECT DISTINCT [TABELA DE CLIENTES].[BAIRRO], [TABELA DE CLIENTES].[NOME], 'CLIENTE' FROM [TABELA DE CLIENTES]
UNION ALL
SELECT DISTINCT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].[NOME], 'VENDEDOR' FROM [TABELA DE VENDEDORES]