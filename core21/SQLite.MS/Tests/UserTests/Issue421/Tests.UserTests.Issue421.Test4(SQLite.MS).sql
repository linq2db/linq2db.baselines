BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [BlobClass19]
(
	[Id]        INTEGER        NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass19] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [BlobClass19]
(
	[Id],
	[BlobValue]
)
VALUES
(
	1,
	X'010203'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass19] [_]
WHERE
	[_].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass19] [_]
WHERE
	[_].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [BlobClass19]

