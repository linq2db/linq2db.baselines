-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Id] <> 4 AND (Date([r].[Target]) <> Date(strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST([r].[Amount] AS NVarChar(22)) || ' Day')) OR [r].[Amount] IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Amount] IS NULL

