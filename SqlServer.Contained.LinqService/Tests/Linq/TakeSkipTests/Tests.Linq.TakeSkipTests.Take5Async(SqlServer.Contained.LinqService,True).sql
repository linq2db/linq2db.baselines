BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

