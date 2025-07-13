BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 5
DECLARE @p Int -- Int32
SET     @p = 14

SELECT
	[s].[value],
	[s].[id]
FROM
	[sample_class] [t1]
		INNER JOIN (
			SELECT * FROM [sample_class] where [id] >= ? and [id] < ?
		) [s] ON ([s].[id] = [t1].[id])
WHERE
	[s].[id] > 10
ORDER BY
	[s].[id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @startId Int -- Int32
SET     @startId = 5
DECLARE @endId Int -- Int32
SET     @endId = 14

SELECT
	[t].[value],
	[t].[id]
FROM
	[sample_class] [t]
WHERE
	[t].[id] >= ? AND [t].[id] < ? AND [t].[id] > 10
ORDER BY
	[t].[id]

