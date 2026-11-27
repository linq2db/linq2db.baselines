-- SqlServer.2012.MS SqlServer.2012
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

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1

-- SqlServer.2012.MS SqlServer.2012
UPDATE
	[BlobValueEntity]
SET
	[BlobValue] = 0x030201
WHERE
	[BlobValueEntity].[Id] = 1

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1

