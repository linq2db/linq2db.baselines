BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [BlobClass39]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass39] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [BlobClass39]
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
	[BlobClass39] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass39] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [BlobClass39]

