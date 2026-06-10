-- SQLite.MS SQLite

SELECT
	[e].[Value1] + 7777
FROM
	[ClientCalcEntity] [e]
UNION ALL
SELECT
	[e_1].[Value2] + 7777
FROM
	[ClientCalcEntity] [e_1]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

