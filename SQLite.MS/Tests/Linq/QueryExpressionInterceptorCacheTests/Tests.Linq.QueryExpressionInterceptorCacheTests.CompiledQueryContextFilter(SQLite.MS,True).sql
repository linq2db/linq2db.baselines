-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 2

SELECT
	COUNT(*)
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] <= @Limit

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3

SELECT
	COUNT(*)
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] <= @Limit

