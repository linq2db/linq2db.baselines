BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	snippet([r].[FTS3_TABLE], '>', '<', '[zzz]')
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'cool'
LIMIT 2

