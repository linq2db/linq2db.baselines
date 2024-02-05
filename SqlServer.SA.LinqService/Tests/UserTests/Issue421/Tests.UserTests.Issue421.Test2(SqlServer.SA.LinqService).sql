BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [BlobClass]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[BlobClass]', N'U') IS NULL)
	CREATE TABLE [BlobClass]
	(
		[Id]        Int            NOT NULL,
		[BlobValue] VarBinary(100)     NULL,

		CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019

UPDATE
	[_]
SET
	[_].[BlobValue] = 0x030201
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [BlobClass]

