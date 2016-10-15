-- Script Date: 09-08-2016 16:08  - ErikEJ.SqlCeScripting version 3.5.2.58
CREATE TABLE [COMANDA] (
  [Id] INTEGER NOT NULL
, [consumo_id] int NOT NULL
, [status] nvarchar(6) NOT NULL
, [created_at] datetime NOT NULL
, [update_at] datetime NOT NULL
, CONSTRAINT [PK_COMANDA] PRIMARY KEY ([Id])
, FOREIGN KEY(consumo_id) REFERENCES CONSUMO(Id)
);
