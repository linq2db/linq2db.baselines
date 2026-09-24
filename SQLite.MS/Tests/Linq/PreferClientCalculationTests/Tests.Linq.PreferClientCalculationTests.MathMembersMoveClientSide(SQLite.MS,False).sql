-- SQLite.MS SQLite
SELECT
	[e].[Id],
	Abs([e].[Num]),
	CASE
		WHEN [e].[Dbl] * 2 = ROUND([e].[Dbl] * 2, [e].[Id]) AND [e].[Dbl] <> ROUND([e].[Dbl], [e].[Id])
			THEN ROUND([e].[Dbl] / 2, [e].[Id]) * 2
		ELSE ROUND([e].[Dbl], [e].[Id])
	END,
	CASE
		WHEN [e].[Dec] * 2 = ROUND([e].[Dec] * 2, [e].[Id]) AND [e].[Dec] <> ROUND([e].[Dec], [e].[Id])
			THEN ROUND([e].[Dec] / 2, [e].[Id]) * 2
		ELSE ROUND([e].[Dec], [e].[Id])
	END
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

