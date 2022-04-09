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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x010203

INSERT INTO [BlobClass]
(
	[Id],
	[BlobValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BlobClass]

