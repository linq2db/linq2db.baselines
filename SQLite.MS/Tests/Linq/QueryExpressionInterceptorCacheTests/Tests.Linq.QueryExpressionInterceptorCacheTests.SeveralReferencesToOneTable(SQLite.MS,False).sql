-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 2

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] <= @Limit
UNION ALL
SELECT
	[e_1].[Id]
FROM
	[CacheItem] [e_1]
WHERE
	[e_1].[Id] > 0 AND [e_1].[Id] <= @Limit

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] <= @Limit
UNION ALL
SELECT
	[e_1].[Id]
FROM
	[CacheItem] [e_1]
WHERE
	[e_1].[Id] > 0 AND [e_1].[Id] <= @Limit

