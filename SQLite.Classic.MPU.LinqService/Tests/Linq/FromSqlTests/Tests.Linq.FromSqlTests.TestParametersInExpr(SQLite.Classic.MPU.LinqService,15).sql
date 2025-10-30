BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 1
DECLARE @endId  -- Int32
SET     @endId = 15

SELECT
	[s].[value],
	[s].[id]
FROM
	[sample_class] [t1]
		INNER JOIN (
			SELECT * FROM [sample_class] where [id] >= @p and [id] < @endId
		) [s] ON [s].[id] = [t1].[id]
WHERE
	[s].[id] > 10
ORDER BY
	[s].[id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @startId  -- Int32
SET     @startId = 1
DECLARE @endId  -- Int32
SET     @endId = 15

SELECT
	[t].[value],
	[t].[id]
FROM
	[sample_class] [t]
WHERE
	[t].[id] >= @startId AND [t].[id] < @endId AND [t].[id] > 10
ORDER BY
	[t].[id]

