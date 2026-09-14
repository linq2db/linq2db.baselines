-- SQLite.MS SQLite
SELECT
	[e].[Id],
	Abs([e].[Num]),
	CASE
		WHEN [e].[Num] >= 5 THEN [e].[Num]
		ELSE 5
	END,
	CASE
		WHEN [e].[Num] <= 5 THEN [e].[Num]
		ELSE 5
	END,
	[e].[Dbl],
	[e].[Dec]
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

