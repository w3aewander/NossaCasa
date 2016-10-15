-- Script Date: 09-08-2016 16:17  - ErikEJ.SqlCeScripting version 3.5.2.58
CREATE TABLE [FORNECEDOR] (
  [Id] INTEGER NOT NULL
, [nome] nvarchar(100) NOT NULL
, [cpf_cnpj] nvarchar(15) NOT NULL
, [representante] nvarchar(100) NOT NULL
, [telefone] nvarchar(15) NOT NULL
, [email] nvarchar(50) NOT NULL
, [site] nvarchar(50) NOT NULL
, [contato] nvarchar(50) NOT NULL
, CONSTRAINT [PK_FORNECEDOR] PRIMARY KEY ([Id])
);
