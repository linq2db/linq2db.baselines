BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT DISTINCT
	[r].[Value]
FROM
	[TakeSkipClass] [r]
LIMIT @take

