BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	snippet([r].[FTS4_TABLE], '>', '<', '[zzz]')
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'cool'
LIMIT @take

