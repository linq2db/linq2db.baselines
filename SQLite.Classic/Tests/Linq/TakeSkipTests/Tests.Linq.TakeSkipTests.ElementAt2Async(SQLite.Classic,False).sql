-- SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]
LIMIT 1 OFFSET @n

