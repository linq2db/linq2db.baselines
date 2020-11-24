BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [BlobClass10]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass10] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [BlobClass10]
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
-- SqlServer.2019 SqlServer.2017

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass10] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass10] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [BlobClass10]

