-- Script Date: 09-08-2016 16:13  - ErikEJ.SqlCeScripting version 3.5.2.58
DROP TABLE IF EXISTS PRODUTO;
CREATE TABLE [PRODUTO] (
  [Id] INTEGER NOT NULL
, [fornecedor_id] int NOT NULL
, [descricao] nvarchar(100) NOT NULL
, [unidade] nvarchar(25) NOT NULL
, [valor_unitario] float NOT NULL
, [created_at] datetime NOT NULL
, [updated_at] datetime NOT NULL
, CONSTRAINT [PK_PRODUTO] PRIMARY KEY ([Id])
, FOREIGN KEY(fornecedor_id) REFERENCES FORNECEDOR(id)
);
