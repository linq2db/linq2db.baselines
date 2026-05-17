-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

-- Access.Jet.OleDb AccessOleDb

UPDATE
	[BlobClass] [t1]
SET
	[t1].[BlobValue] = 0x030201
WHERE
	[t1].[Id] = 1

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

