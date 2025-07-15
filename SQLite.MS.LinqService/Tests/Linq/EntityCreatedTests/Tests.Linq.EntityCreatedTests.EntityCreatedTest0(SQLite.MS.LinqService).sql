BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
LIMIT @take

