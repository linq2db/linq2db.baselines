BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

