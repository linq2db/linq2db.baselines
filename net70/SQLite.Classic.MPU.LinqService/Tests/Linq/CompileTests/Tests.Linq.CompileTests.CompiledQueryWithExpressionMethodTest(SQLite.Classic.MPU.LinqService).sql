BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @ParentID
ORDER BY
	[x].[ParentID] DESC
LIMIT 1

