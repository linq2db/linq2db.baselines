BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	snippet([r].[FTS4_TABLE], '>', '<', '[zzz]')
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'cool'
LIMIT 2

