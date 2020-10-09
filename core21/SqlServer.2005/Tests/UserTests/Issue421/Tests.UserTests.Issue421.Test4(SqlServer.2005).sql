BeforeExecute
-- SqlServer.2005

CREATE TABLE [BlobClass19]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass19] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [BlobClass19]
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
-- SqlServer.2005

SELECT TOP (1) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass19] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2005

SELECT TOP (1) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass19] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2005

DROP TABLE [BlobClass19]

