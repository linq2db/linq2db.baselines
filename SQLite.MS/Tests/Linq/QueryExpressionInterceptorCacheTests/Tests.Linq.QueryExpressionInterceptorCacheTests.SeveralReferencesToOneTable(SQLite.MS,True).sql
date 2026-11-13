-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 2

SELECT
	[y].[Id]
FROM
	[CacheItem] [x]
		INNER JOIN [CacheItem] [y] ON [y].[Id] >= [x].[Id]
WHERE
	[x].[Id] > 0 AND
	[x].[Id] <= @Limit AND
	[y].[Id] > 0 AND
	[y].[Id] <= @Limit

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[y].[Id]
FROM
	[CacheItem] [x]
		INNER JOIN [CacheItem] [y] ON [y].[Id] >= [x].[Id]
WHERE
	[x].[Id] > 0 AND
	[x].[Id] <= @Limit AND
	[y].[Id] > 0 AND
	[y].[Id] <= @Limit

