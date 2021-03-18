﻿BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [BlobClass]
(
	[Id]        Int            NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x010203

INSERT INTO [BlobClass]
(
	[Id],
	[BlobValue]
)
VALUES
(
	@Id,
	@BlobValue
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
DECLARE @BlobValue VarBinary(3) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	[BlobClass]
SET
	[_].[BlobValue] = @BlobValue
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

