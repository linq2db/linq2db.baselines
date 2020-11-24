BeforeExecute
-- SqlCe

CREATE TABLE [BlobClass10]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass10] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass10] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass10] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [BlobClass10]

