-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[text1],
	[r].[text2]
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[rowid] IN (
		SELECT
			[r_1].[rowid]
		FROM
			[FTS4_TABLE] [r_1]
		WHERE
			[r_1].[FTS4_TABLE] MATCH 'something'
	)

