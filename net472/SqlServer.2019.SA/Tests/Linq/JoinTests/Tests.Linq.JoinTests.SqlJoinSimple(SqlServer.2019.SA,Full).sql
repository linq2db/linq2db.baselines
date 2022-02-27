BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

