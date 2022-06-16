BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 300000

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
LIMIT 1 OFFSET @n

