BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	snippet([r].[FTS4_TABLE], '>', '<', '[zzz]', 0)
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'cool'
LIMIT 2

