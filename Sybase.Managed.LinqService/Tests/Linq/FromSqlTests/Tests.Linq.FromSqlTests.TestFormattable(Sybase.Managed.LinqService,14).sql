BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 5
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 14

SELECT
	[c_1].[value],
	[c_1].[id]
FROM
	(
		SELECT * FROM [sample_class] where [id] >= @p and [id] < @p_1
	) [c_1]
WHERE
	[c_1].[id] > 10
ORDER BY
	[c_1].[id]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 14

SELECT
	[t].[value],
	[t].[id]
FROM
	[sample_class] [t]
WHERE
	[t].[id] >= @startId AND [t].[id] < @endId AND [t].[id] > 10
ORDER BY
	[t].[id]

