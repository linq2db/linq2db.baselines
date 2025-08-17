BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[text1] MATCH 'found'

