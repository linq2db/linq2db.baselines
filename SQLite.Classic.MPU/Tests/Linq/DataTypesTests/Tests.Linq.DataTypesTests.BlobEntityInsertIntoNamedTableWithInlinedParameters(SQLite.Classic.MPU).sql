-- SQLite.Classic.MPU SQLite.Classic SQLite
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[BlobValue]
FROM
	[BlobValueEntity] [t1]
WHERE
	[t1].[Id] = 1
LIMIT 1

