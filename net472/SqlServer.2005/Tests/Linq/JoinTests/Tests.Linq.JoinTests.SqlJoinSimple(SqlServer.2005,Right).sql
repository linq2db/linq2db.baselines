BeforeExecute
-- SqlServer.2005

SELECT 
	[p].[ParentID], 
	[r].[ChildID]
FROM
	[Parent] [p]
		RIGHT JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

