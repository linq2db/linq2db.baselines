BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT DISTINCT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [GrandChild] [g_1] ON [c_1].[ChildID] = [g_1].[ChildID]
ORDER BY
	[p].[ParentID]

