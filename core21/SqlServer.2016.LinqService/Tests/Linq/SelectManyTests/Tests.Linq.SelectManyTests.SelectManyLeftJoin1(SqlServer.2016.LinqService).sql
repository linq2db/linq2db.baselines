BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[Value1],
	[o].[ChildID],
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [o] ON [p].[ParentID] = [o].[ParentID]

