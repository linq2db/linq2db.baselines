-- SQLite.MS SQLite

SELECT
	snippet([r].[FTS4_TABLE], '->', '<-')
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'looking'
LIMIT 2

