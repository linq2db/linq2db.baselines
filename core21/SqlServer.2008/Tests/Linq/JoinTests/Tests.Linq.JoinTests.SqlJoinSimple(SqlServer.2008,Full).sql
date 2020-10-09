BeforeExecute
-- SqlServer.2008

SELECT 
	[p].[ParentID], 
	[r].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

