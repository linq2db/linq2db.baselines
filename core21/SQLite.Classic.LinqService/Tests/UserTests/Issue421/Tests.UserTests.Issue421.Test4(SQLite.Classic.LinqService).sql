BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [BlobClass58]
(
	[Id]        INTEGER        NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass58] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [BlobClass58]
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
-- SQLite.Classic SQLite

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass58] [_]
WHERE
	[_].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[Id],
	[_].[BlobValue]
FROM
	[BlobClass58] [_]
WHERE
	[_].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [BlobClass58]

