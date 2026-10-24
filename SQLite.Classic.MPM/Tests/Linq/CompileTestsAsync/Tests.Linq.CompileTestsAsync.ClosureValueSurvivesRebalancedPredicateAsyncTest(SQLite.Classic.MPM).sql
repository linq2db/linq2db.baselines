-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND
	[p].[ParentID] > 0 AND
	[p].[ParentID] < 1000 AND
	[p].[ParentID] <> -1

