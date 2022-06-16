BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			[p].[Value1]
		FROM
			[Parent] [p]
		LIMIT @take
	)

