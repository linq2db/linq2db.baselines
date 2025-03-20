BeforeExecute
-- SQLite.MS SQLite
DECLARE @parent_ParentID  -- Int32
SET     @parent_ParentID = 3
DECLARE @parent_Value1  -- Int32
SET     @parent_Value1 = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @parent_ParentID AND [p].[Value1] = @parent_Value1

