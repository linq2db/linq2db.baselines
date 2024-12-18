BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
			[r_1].[FTS3_TABLE] MATCH 'something' AND ([r].[rowid] = [r_1].[rowid] AND [r].[rowid] IS NOT NULL AND [r_1].[rowid] IS NOT NULL OR [r].[rowid] IS NULL AND [r_1].[rowid] IS NULL)
	)

