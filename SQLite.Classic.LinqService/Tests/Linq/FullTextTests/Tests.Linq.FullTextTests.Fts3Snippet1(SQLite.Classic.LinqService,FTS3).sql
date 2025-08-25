BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	snippet([r].[FTS3_TABLE])
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'something'
LIMIT 2

