BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	snippet([r].[FTS4_TABLE], '>', '<', '[zzz]', 1, 1)
FROM
	[FTS4_TABLE] [r]
WHERE
	[r].[FTS4_TABLE] MATCH 'cool'
LIMIT @take

