BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT DISTINCT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
LIMIT @take

