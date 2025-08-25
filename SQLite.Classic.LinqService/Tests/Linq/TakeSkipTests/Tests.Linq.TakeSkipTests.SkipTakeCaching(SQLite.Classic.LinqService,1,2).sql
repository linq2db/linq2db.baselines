BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
ORDER BY
	[t1].[Value1]
LIMIT @take OFFSET @skip

