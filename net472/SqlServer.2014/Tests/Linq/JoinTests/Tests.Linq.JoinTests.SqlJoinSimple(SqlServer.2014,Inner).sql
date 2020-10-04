BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

