-- SQLite.MS SQLite

SELECT
	RTRIM([t].[VarCharColumn], '.+')
FROM
	[StringTrimTable] [t]
ORDER BY
	[t].[Id]

