-- SQLite.MS SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST((([r].[PreNotification] * 10000000) / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[TaskRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TaskRow] [r]
WHERE
	[r].[StartDateTime] IS NULL OR [r].[PreNotification] IS NULL
ORDER BY
	[r].[Id]

