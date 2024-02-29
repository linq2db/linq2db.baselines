BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[Value1],
	[o].[ChildID],
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [o] ON [p].[ParentID] = [o].[ParentID]

