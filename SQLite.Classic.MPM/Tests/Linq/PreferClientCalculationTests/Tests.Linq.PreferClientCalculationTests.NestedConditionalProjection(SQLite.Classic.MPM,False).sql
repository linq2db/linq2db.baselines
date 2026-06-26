-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[e].[Id],
	CASE
		WHEN [e].[Value1] > 15 THEN CASE
			WHEN [e].[Value2] > 150 THEN 'high'
			ELSE 'mid'
		END
		ELSE 'low'
	END,
	CASE
		WHEN [e].[Id] > 1 THEN [e].[Value1] + [e].[Value2]
		ELSE [e].[Value1] - [e].[Value2]
	END
FROM
	[ClientCalcEntity] [e]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

