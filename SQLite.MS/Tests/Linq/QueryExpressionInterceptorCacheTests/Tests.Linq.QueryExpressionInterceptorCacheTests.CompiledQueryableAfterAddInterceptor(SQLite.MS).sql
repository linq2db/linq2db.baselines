-- SQLite.MS SQLite
SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] <= @Limit

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] <= @Limit

