-- SQLite.Classic SQLite

SELECT
	LTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

-- SQLite.Classic SQLite

SELECT
	LTRIM([t].[VarCharColumn], 'ab')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

