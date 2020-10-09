BeforeExecute
-- SqlServer.2008

SELECT 
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON [x].[ParentID] = [y].[ParentID]

BeforeExecute
-- SqlServer.2008

SELECT 
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON [x].[ParentID] = [y].[ParentID]
GROUP BY
	[x].[ParentID]

