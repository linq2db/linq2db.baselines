-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EmptyCount Integer -- Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount Integer -- Int32
SET     @ItemsCount = 2

INSERT INTO [CountTarget]
(
	[Id],
	[EmptyCount],
	[ItemsCount]
)
VALUES
(
	1,
	@EmptyCount,
	@ItemsCount
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[EmptyCount],
	[t1].[ItemsCount]
FROM
	[CountTarget] [t1]
LIMIT 2

