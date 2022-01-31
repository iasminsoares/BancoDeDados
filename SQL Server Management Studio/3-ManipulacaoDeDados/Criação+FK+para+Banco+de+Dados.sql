
ALTER TABLE [dbo].[NOTAS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS_CLIENTES] FOREIGN KEY([CPF])
REFERENCES [dbo].[CLIENTES] ([CPF])

ALTER TABLE [dbo].[NOTAS]  WITH CHECK ADD  CONSTRAINT [FK_NOTAS_VENDEDORES] FOREIGN KEY([MATRICULA])
REFERENCES [dbo].[VENDEDORES] ([MATRÍCULA])

ALTER TABLE [dbo].[ITENS VENDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS VENDIDOS_NOTAS] FOREIGN KEY([NÚMERO])
REFERENCES [dbo].[NOTAS] ([NÚMERO])

ALTER TABLE [dbo].[ITENS VENDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_ITENS VENDIDOS_PRODUTOS] FOREIGN KEY([CÓDIGO])
REFERENCES [dbo].[PRODUTOS] ([CÓDIGO])
GO

--O comando é alter table, tabela de notas, with check add constraint, estou adicionando uma restrição, 
--fk_notas_clientes. Uso no nome as duas tabelas. Agora vou dizer o campo da tabela notas em que o relacionamento chega. 
--E finalmente coloco reference e o nome da tabela onde está partindo o relacionamento. Entre parênteses, o campo de onde 
--o relacionamento está saindo.
