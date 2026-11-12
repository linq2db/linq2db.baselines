-- SQLite.MS SQLite
SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0
UNION ALL
SELECT
	[e_1].[Id]
FROM
	[CacheItem] [e_1]
WHERE
	[e_1].[Id] < 5 AND [e_1].[Id] <= 2

-- SQLite.MS SQLite
SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0
UNION ALL
SELECT
	[e_1].[Id]
FROM
	[CacheItem] [e_1]
WHERE
	[e_1].[Id] < 5 AND [e_1].[Id] > 2

