-- SQLite.Classic SQLite
SELECT
	CAST([e].[Dec] AS Float) / [j].[Dec]
FROM
	[MissedDivisorEntity] [e]
		LEFT JOIN [MissedDivisorEntity] [j] ON [j].[Id] = [e].[Id] + 1000

