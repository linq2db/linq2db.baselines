BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	snippet([r].[FTS4_TABLE])
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'something'
LIMIT 2

