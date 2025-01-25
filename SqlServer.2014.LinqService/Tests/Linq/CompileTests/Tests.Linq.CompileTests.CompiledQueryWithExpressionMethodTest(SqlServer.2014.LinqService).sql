BeforeExecute
-- SqlServer.2014
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT TOP (1)
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @ParentID
ORDER BY
	[x].[ParentID] DESC

