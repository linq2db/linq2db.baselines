BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	snippet([r].[FTS3_TABLE], '_')
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'looking'
LIMIT 2

