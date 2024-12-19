BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [BlobClass]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [BlobClass]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
	@Id,
	@BlobValue
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	[BlobClass] [t1]
SET
	[t1].[BlobValue] = @BlobValue
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [BlobClass]

