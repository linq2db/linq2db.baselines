BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		RIGHT JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

