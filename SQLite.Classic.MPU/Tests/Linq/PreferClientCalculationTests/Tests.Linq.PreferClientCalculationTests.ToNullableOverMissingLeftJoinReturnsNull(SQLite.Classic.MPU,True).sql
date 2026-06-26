-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[e].[Id],
	[j].[Value1]
FROM
	[ClientCalcEntity] [e]
		LEFT JOIN [ClientCalcEntity] [j] ON [j].[Id] = [e].[Id] + 1000

