
ALTER TABLE [dbo].[NOTAS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS_CLIENTES] FOREIGN KEY([CPF])
REFERENCES [dbo].[CLIENTES] ([CPF])

ALTER TABLE [dbo].[NOTAS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS_VENDEDORES] FOREIGN KEY([MATRICULA])
REFERENCES [dbo].[VENDEDORES] ([MATR�CULA])

ALTER TABLE [dbo].[ITENS VENDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS VENDIDOS_NOTAS] FOREIGN KEY([N�MERO])
REFERENCES [dbo].[NOTAS] ([N�MERO])

ALTER TABLE [dbo].[ITENS VENDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS VENDIDOS_PRODUTOS] FOREIGN KEY([C�DIGO])
REFERENCES [dbo].[PRODUTOS] ([C�DIGO])
GO

--O comando � alter table, tabela de notas, with check add constraint, estou adicionando uma restri��o, 
--fk_notas_clientes. Uso no nome as duas tabelas. Agora vou dizer o campo da tabela notas em que o relacionamento chega. 
--E finalmente coloco reference e o nome da tabela onde est� partindo o relacionamento. Entre par�nteses, o campo de onde 
--o relacionamento est� saindo.
