BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[r].[text1],
	offsets([r].[FTS3_TABLE])
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'found'
ORDER BY
	[r].[rowid]

