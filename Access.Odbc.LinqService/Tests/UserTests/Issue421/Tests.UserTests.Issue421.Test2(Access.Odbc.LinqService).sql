BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BlobClass]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [BlobClass]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [BlobClass]
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
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

UPDATE
	[BlobClass] [t1]
SET
	[t1].[BlobValue] = 0x030201
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BlobClass]

