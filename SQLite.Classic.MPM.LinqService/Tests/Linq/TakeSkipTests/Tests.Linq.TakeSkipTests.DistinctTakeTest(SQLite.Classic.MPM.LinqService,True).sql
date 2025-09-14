BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 3

SELECT DISTINCT
	[r].[Value]
FROM
	[TakeSkipClass] [r]
LIMIT @take

