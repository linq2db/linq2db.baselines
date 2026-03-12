-- SQLite.Classic SQLite

SELECT
	[g_1].[Title],
	COUNT(DISTINCT [g_1].[Title])
FROM
	[odata_person] [g_1]
GROUP BY
	[g_1].[Title]

