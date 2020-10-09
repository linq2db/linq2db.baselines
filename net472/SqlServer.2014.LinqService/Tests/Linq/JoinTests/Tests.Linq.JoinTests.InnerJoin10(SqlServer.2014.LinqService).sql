BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[ParentID], 
	[q].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [q] ON [p].[ParentID] = [q].[ParentID]

