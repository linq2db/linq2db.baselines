-- SQLite.MS SQLite

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[text1] MATCH 'found'

