BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[g_1].[Id],
	SUM([g_1].[Id])
FROM
	(SELECT CAST(NULL AS INTEGER) [Id] WHERE 1 = 0) [g_1]
GROUP BY
	[g_1].[Id]

