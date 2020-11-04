BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [BlobClass10]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass10] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT TOP 1
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass10] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass10] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [BlobClass10]

