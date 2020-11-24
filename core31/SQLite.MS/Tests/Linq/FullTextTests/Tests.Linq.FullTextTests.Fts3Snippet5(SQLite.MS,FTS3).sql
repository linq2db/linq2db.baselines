BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	snippet([r].[FTS3_TABLE], '>', '<', '[zzz]', 0)
FROM
	[FTS3_TABLE] [r]
WHERE
	[r].[FTS3_TABLE] MATCH 'cool'
LIMIT @take

