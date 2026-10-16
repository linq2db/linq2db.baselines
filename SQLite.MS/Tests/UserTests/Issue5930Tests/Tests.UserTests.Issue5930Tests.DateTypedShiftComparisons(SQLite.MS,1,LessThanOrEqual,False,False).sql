-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Id] <> 4 AND Date(strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST([r].[Amount] AS NVarChar(22)) || ' Day')) <= Date([r].[Target])
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Amount] IS NULL

