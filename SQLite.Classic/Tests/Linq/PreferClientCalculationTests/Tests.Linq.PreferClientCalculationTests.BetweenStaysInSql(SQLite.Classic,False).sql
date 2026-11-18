-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	[e].[Value1] BETWEEN 15 AND 25,
	CASE
		WHEN [e].[Value1] NOT BETWEEN 15 AND 25 THEN 'out'
		ELSE 'in'
	END
FROM
	[ClientCalcEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

