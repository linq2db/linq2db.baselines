BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [BlobClass20]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass20] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [BlobClass20]
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
-- SqlServer.2016 SqlServer.2012

SELECT TOP (1) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass20] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT TOP (1) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass20] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [BlobClass20]

