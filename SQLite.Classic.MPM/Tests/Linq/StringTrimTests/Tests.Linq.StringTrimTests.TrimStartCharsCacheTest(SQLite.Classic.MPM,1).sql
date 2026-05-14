-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	LTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

