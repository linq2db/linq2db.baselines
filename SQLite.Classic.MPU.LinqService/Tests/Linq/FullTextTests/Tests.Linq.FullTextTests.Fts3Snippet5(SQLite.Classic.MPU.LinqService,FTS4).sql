BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	snippet([r].[FTS4_TABLE], '>', '<', '[zzz]', 0)
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'cool'
LIMIT 2

