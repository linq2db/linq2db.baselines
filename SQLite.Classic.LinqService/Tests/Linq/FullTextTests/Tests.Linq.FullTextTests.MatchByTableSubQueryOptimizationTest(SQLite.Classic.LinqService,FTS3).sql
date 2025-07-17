BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[rowid] IN (
		SELECT
			[r_1].[rowid]
		FROM
			[FTS3_TABLE] [r_1]
		WHERE
			[r_1].[FTS3_TABLE] MATCH 'something'
	)

