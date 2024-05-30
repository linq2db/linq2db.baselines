BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BlobClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [BlobClass]
(
	[Id]        INTEGER        NOT NULL,
	[BlobValue] VarBinary(100)     NULL,

	CONSTRAINT [PK_BlobClass] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [BlobClass]
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
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobClass] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BlobClass]

