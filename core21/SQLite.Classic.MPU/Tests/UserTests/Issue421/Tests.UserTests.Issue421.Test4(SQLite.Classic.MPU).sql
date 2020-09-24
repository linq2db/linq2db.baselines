BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [BlobClass56]
(
	[Id]        INTEGER        NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass56] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [BlobClass56]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass56] [_]
WHERE
	[_].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass56] [_]
WHERE
	[_].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [BlobClass56]

