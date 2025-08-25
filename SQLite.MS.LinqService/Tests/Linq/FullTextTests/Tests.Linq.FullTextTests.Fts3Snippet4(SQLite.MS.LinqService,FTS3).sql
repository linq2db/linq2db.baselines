BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	snippet([r].[FTS3_TABLE], '>', '<', '[zzz]')
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'cool'
LIMIT 2

