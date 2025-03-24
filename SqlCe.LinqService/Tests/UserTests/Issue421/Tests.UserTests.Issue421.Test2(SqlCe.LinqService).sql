﻿BeforeExecute
--  SqlCe

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
--  SqlCe

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

BeforeExecute
--  SqlCe

UPDATE
	[BlobClass]
SET
	[BlobValue] = 0x030201
WHERE
	[BlobClass].[Id] = 1

BeforeExecute
--  SqlCe

SELECT TOP (1)
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1

