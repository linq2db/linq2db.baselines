-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	Date([r].[Target]) < Date(strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST([r].[Amount] AS NVarChar(22)) || ' Day'))
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Amount] IS NULL

