-- SQLite.MS SQLite
SELECT
	[i].[Id]
FROM
	[InEnumTable] [i]
WHERE
	([i].[Value] IN (1) OR [i].[Value] IS NULL)
ORDER BY
	[i].[Id]

