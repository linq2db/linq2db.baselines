BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BlobClass]', N'U') IS NOT NULL)
	DROP TABLE [BlobClass]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BlobClass]', N'U') IS NULL)
	CREATE TABLE [BlobClass]
	(
		[Id]        Int            NOT NULL,
		[BlobValue] VarBinary(100)     NULL,

		CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BlobClass]', N'U') IS NOT NULL)
	DROP TABLE [BlobClass]

