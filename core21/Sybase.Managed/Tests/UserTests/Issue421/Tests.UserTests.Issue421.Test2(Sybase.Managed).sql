BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [BlobClass]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT TOP 1 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[BlobClass]
SET
	[_].[BlobValue] = 0x030201
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[_].[Id], 
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [BlobClass]

