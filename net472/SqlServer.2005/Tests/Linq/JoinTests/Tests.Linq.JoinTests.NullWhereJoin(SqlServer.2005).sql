BeforeExecute
-- SqlServer.2005

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p1]
		INNER JOIN [Parent] [p] ON [p1].[ParentID] = [p].[ParentID] AND ([p1].[Value1] IS NULL AND [p].[Value1] IS NULL OR [p1].[Value1] = [p].[Value1])

