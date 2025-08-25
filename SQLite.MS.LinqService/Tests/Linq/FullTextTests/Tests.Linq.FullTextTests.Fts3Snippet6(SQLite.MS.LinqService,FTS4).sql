BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	snippet([r].[FTS4_TABLE], '>', '<', '[zzz]', 1, 1)
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'cool'
LIMIT 2

