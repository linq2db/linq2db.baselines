-- SQLite.MS SQLite
SELECT
	[e].[Id],
	[e].[Value1],
	[e].[Value2],
	[e].[Name]
FROM
	[ClientCalcEntity] [e]
WHERE
	ABS([e].[Value1]) = 20

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

