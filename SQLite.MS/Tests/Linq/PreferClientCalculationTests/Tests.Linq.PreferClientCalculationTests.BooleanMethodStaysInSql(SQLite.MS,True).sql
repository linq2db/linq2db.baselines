-- SQLite.MS SQLite
SELECT
	[e].[Id],
	[e].[Name] IS NULL OR LTRIM([e].[Name], '	
                  　') = ''
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

