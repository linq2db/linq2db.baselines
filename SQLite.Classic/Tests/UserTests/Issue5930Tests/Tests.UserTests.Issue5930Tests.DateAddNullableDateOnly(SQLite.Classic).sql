-- SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value], CAST([r].[Amount] AS NVarChar(22)) || ' Day')
FROM
	[DateOnlyAddRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[DateOnlyAddRow] [r]
WHERE
	[r].[Value] IS NULL OR [r].[Amount] IS NULL
ORDER BY
	[r].[Id]

