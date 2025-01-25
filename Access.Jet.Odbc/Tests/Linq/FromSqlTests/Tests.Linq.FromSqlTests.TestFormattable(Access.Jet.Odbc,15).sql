BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[c_1].[value],
	[c_1].[id]
FROM
	(
		SELECT * FROM [sample_class] where [id] >= 5 and [id] < 15
	) [c_1]
WHERE
	[c_1].[id] > 10
ORDER BY
	[c_1].[id]

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @startId Int -- Int32
SET     @startId = 5
DECLARE @endId Int -- Int32
SET     @endId = 15

SELECT
	[t].[value],
	[t].[id]
FROM
	[sample_class] [t]
WHERE
	[t].[id] >= ? AND [t].[id] < ? AND [t].[id] > 10
ORDER BY
	[t].[id]

