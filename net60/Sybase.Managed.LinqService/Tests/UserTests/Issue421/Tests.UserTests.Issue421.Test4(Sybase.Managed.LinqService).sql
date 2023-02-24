﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BlobClass') IS NOT NULL)
	DROP TABLE [BlobClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BlobClass') IS NULL)
	EXECUTE('
		CREATE TABLE [BlobClass]
		(
			[Id]        Int            NOT NULL,
			[BlobValue] VarBinary(100)     NULL,

			CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
		)
	')

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

SELECT TOP 1
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass] [_]
WHERE
	[_].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BlobClass') IS NOT NULL)
	DROP TABLE [BlobClass]

