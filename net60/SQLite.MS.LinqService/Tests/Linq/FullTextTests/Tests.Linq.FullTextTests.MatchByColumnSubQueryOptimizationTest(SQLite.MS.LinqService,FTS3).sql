BeforeExecute
-- SQLite.MS SQLite

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
			[FTS3_TABLE] [param]
		WHERE
			([param].[rowid] = [r].[rowid] OR [param].[rowid] IS NULL AND [r].[rowid] IS NULL) AND
			[param].[text1] MATCH 'found'
	)

