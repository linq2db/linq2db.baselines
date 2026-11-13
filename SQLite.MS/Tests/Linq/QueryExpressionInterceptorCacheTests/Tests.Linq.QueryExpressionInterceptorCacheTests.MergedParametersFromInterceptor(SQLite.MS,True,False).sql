-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] >= @Value AND [e].[Id] <= @Value_1

-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 2
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 2

SELECT
	[e].[Id]
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] >= @Value AND [e].[Id] <= @Value_1

-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 2

SELECT
	COUNT(*)
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] >= @Value AND [e].[Id] <= @Value

-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3

SELECT
	COUNT(*)
FROM
	[CacheItem] [e]
WHERE
	[e].[Id] > 0 AND [e].[Id] >= @Value AND [e].[Id] <= @Value_1

