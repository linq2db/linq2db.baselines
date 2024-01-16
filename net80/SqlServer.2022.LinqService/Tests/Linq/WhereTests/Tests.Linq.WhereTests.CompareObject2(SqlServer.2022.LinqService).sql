BeforeExecute
-- SqlServer.2022
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID AND [p].[Value1] IS NULL

