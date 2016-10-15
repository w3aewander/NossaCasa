-- Script Date: 09-08-2016 16:11  - ErikEJ.SqlCeScripting version 3.5.2.58
DROP TABLE IF EXISTS CONSUMO_ITEM;
CREATE TABLE [CONSUMO_ITEM] (
  [Id] INTEGER NOT NULL
, [produto_id] int NOT NULL
, [qtde] float NOT NULL
, [created_at] datetime NOT NULL
, [updated_at] datetime NOT NULL
, CONSTRAINT [PK_CONSUMO_ITEM] PRIMARY KEY ([Id])
FOREIGN KEY(produto_id) REFERENCES PRODUTO(id)

);
