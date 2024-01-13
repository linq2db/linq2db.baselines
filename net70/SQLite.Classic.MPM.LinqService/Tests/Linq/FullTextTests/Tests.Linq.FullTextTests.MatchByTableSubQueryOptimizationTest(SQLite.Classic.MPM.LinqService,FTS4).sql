BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS4_TABLE] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[FTS4_TABLE] [param]
		WHERE
			([param].[rowid] = [r].[rowid] OR [param].[rowid] IS NULL AND [r].[rowid] IS NULL) AND
			[param].[FTS4_TABLE] MATCH 'something'
	)

