BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @parent_ParentID AND [p].[Value1] IS NULL

