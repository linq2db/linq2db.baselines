BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS3_TABLE] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[FTS3_TABLE] [r_1]
		WHERE
			([r_1].[rowid] = [r].[rowid] OR [r_1].[rowid] IS NULL AND [r].[rowid] IS NULL) AND
			[r_1].[text1] MATCH 'found'
	)

