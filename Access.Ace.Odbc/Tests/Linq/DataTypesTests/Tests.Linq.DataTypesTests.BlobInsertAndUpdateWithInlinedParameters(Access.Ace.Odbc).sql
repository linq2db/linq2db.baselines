-- Access.Ace.Odbc AccessODBC
INSERT INTO [BlobValueEntity]
(
	[Id],
	[BlobValue]
)
VALUES
(
	1,
	0x010203
)

-- Access.Ace.Odbc AccessODBC
SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1

-- Access.Ace.Odbc AccessODBC
UPDATE
	[BlobValueEntity] [t1]
SET
	[t1].[BlobValue] = 0x030201
WHERE
	[t1].[Id] = 1

-- Access.Ace.Odbc AccessODBC
SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1

