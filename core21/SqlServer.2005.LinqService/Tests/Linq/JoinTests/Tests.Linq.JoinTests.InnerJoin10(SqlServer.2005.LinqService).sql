BeforeExecute
-- SqlServer.2005

SELECT 
	[p].[ParentID], 
	[q].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [q] ON [p].[ParentID] = [q].[ParentID]

