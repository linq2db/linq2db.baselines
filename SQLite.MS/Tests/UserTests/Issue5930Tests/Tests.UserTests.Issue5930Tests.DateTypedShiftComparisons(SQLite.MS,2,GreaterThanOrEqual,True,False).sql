-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	Date([r].[Target]) >= Date(strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST(CAST([r].[Duration] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second'))
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Duration] IS NULL

