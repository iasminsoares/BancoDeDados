
SELECT * FROM [VENDEDORES]

BEGIN TRANSACTION -- inicia o "congelamento" do banco

UPDATE [VENDEDORES] SET [COMISS�O] = [COMISS�O] * 1.15

INSERT INTO [VENDEDORES] ([MATR�CULA], [NOME], [BAIRRO],[COMISS�O], [DATA ADMISS�O], [F�RIAS])
VALUES ('99999','Jo�o da Silva','Icara�',0.08,'2014-09-01',0)

ROLLBACK --volta os registros no ponto do congelamento

COMMIT -- salva as altera��es permanetemente 

