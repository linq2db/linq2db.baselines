-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 1

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] <= @Limit

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 2

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

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 4

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] <= @Limit

