BeforeExecute
-- SqlServer.2005
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	([p].[ParentID] = @ParentID_1 AND [p].[Value1] IS NULL)

