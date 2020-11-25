BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

