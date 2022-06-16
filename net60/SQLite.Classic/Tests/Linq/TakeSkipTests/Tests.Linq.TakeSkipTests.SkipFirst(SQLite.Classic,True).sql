BeforeExecute
-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
LIMIT 1 OFFSET @skip

