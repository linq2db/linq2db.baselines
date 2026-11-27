-- SQLite.MS SQLite
INSERT INTO [BlobValueEntity]
(
	[Id],
	[BlobValue]
)
VALUES
(
	1,
	X'010203'
)

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

-- SQLite.MS SQLite
UPDATE
	[BlobValueEntity]
SET
	[BlobValue] = X'030201'
WHERE
	[BlobValueEntity].[Id] = 1

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

