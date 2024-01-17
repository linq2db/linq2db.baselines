BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[text1],
	matchinfo([r].[FTS4_TABLE], 'pc')
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'found'
ORDER BY
	[r].[rowid]

