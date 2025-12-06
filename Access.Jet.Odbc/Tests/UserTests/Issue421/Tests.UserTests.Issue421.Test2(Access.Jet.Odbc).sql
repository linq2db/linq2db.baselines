-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

-- Access.Jet.Odbc AccessODBC

UPDATE
	[BlobClass] [t1]
SET
	[t1].[BlobValue] = 0x030201
WHERE
	[t1].[Id] = 1

-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

