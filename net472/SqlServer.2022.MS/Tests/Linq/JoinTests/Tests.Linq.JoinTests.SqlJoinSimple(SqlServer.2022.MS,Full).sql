BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

