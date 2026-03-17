SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS5_TABLE] [r]
WHERE
	[r].[FTS5_TABLE] MATCH 'something'

