BeforeExecute
-- SqlCe

CREATE TABLE [BlobClass20]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass20] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT TOP (1) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass20] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlCe

SELECT TOP (1) 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass20] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [BlobClass20]

