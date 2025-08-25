BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'something'

