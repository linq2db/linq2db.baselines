-- SQLite.MS SQLite
SELECT
	[e].[Id],
	CAST([e].[Num] AS INTEGER),
	CAST([e].[Num] AS Float),
	CAST([e].[Num] AS Decimal),
	CAST(CASE
		WHEN [e].[Dec] - FLOOR([e].[Dec]) = 0.5 AND FLOOR([e].[Dec]) % 2 = 0
			THEN FLOOR([e].[Dec])
		ELSE ROUND([e].[Dec], 0)
	END AS INTEGER)
FROM
	[BatchCalcEntity] [e]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Num],
	[t1].[Dbl],
	[t1].[Dec],
	[t1].[Name],
	[t1].[Date]
FROM
	[BatchCalcEntity] [t1]

