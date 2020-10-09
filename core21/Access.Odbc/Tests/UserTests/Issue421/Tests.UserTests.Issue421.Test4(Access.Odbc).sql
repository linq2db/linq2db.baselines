BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [BlobClass19]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass19] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [BlobClass19]
(
	[Id],
	[BlobValue]
)
VALUES
(
	1,
	0x010203
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass19] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass19] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BlobClass19]

