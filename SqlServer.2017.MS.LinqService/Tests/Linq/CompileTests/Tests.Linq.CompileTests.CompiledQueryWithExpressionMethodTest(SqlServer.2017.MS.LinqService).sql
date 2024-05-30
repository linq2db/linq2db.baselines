BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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

