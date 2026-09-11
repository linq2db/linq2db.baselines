-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @skip  -- Int32
SET     @skip = 300000

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
LIMIT 1 OFFSET @skip

