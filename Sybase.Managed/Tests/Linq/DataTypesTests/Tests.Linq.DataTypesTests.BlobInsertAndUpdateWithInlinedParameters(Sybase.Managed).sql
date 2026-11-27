-- Sybase.Managed Sybase
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

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1

-- Sybase.Managed Sybase
UPDATE
	[BlobValueEntity]
SET
	[BlobValue] = 0x030201
WHERE
	[BlobValueEntity].[Id] = 1

-- Sybase.Managed Sybase
SELECT TOP 1
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1

