-- SqlServer.2008.MS SqlServer.2008

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

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[BlobClass]
SET
	[BlobValue] = 0x030201
WHERE
	[BlobClass].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

