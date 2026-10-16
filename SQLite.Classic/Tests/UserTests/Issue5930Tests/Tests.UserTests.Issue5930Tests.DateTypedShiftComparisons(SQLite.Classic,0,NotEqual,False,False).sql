-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	Date(strftime('%Y-%m-%d %H:%M:%f', [r].[Date], CAST([r].[Amount] AS NVarChar(22)) || ' Day')) <> Date([r].[Target]) OR
	[r].[Amount] IS NULL
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateTypedRow] [r]
WHERE
	[r].[Amount] IS NULL

