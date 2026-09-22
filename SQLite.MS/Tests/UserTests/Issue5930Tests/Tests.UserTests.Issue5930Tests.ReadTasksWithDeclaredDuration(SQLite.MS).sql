-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[StartDateTime],
	[t1].[PreNotification]
FROM
	[TaskRow] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[TaskRow] [r]
ORDER BY
	[r].[Id]

