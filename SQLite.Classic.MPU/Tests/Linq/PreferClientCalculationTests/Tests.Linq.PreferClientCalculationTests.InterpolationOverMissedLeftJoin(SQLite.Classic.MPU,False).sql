-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	'[' || CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)) || ']',
	'[' || Coalesce(CAST([j].[Value1] AS NVarChar(11)), '') || ']'
FROM
	[ClientCalcEntity] [e]
		LEFT JOIN [ClientCalcEntity] [j] ON [j].[Id] = [e].[Id] + 1000

