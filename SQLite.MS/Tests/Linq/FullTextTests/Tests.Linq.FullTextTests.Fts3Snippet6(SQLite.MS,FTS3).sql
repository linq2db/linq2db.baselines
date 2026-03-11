-- SQLite.MS SQLite

SELECT
	snippet([r].[FTS3_TABLE], '>', '<', '[zzz]', 1, 1)
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'cool'
LIMIT 2

