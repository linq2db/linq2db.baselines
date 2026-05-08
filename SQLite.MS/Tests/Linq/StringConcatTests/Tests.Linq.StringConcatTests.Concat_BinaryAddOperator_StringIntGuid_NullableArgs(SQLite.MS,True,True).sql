-- SQLite.MS SQLite

SELECT
	Coalesce([t].[Value1], '') || Coalesce(CAST([t].[Value2] AS NVarChar(11)), '') || Coalesce(CASE
		WHEN [t].[Value3] IS NULL THEN NULL
		ELSE Lower(substr(hex([t].[Value3]), 7, 2) || substr(hex([t].[Value3]), 5, 2) || substr(hex([t].[Value3]), 3, 2) || substr(hex([t].[Value3]), 1, 2) || '-' || substr(hex([t].[Value3]), 11, 2) || substr(hex([t].[Value3]), 9, 2) || '-' || substr(hex([t].[Value3]), 15, 2) || substr(hex([t].[Value3]), 13, 2) || '-' || substr(hex([t].[Value3]), 17, 4) || '-' || substr(hex([t].[Value3]), 21, 12))
	END, '')
FROM
	[StringConcatIntGuidNullEntity] [t]
ORDER BY
	[t].[ID]

-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatIntGuidNullEntity] [t1]

