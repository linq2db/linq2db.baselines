BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT
	Date(CURRENT_TIMESTAMP),
	Count(*)
FROM
	[Parent] [v]
		INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
WHERE
	[v].[Value1] > 0
LIMIT @take

