BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 5
DECLARE @p_1 Int -- Int32
SET     @p_1 = 14

SELECT
	[c_1].[value] as [Value_1],
	[c_1].[id] as [Id]
FROM
	(
		SELECT * FROM [sample_class] where [id] >= @p and [id] < @p_1
	) [c_1]
WHERE
	[c_1].[id] > 10
ORDER BY
	[c_1].[id]

BeforeExecute
-- SqlCe
DECLARE @startId Int -- Int32
SET     @startId = 5
DECLARE @endId Int -- Int32
SET     @endId = 14

SELECT
	[t].[value] as [Value_1],
	[t].[id] as [Id]
FROM
	[sample_class] [t]
WHERE
	[t].[id] >= @startId AND [t].[id] < @endId AND [t].[id] > 10
ORDER BY
	[t].[id]

