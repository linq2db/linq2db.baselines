BeforeExecute
-- SqlServer.2019 SqlServer.2017 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 1

SELECT TOP (@take)
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = @ParentID_1
ORDER BY
	[x].[ParentID] DESC

