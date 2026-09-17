-- SQLite.MS SQLite
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SQLite.MS SQLite
SELECT
	[l].[ItemId],
	[l].[Log]
FROM
	[ItemLog] [l]
WHERE
	[l].[ItemId] IN (1, 2)
ORDER BY
	[l].[Id]

