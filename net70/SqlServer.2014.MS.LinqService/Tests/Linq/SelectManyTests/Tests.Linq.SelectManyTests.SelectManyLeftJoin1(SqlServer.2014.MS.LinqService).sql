BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[Value1],
	[o].[ChildID],
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [o] ON [p].[ParentID] = [o].[ParentID]

