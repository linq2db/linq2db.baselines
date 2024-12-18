BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ParentID] IS NOT NULL AND [g_1].[ChildID] = [a_Child].[ChildID] AND [g_1].[ChildID] IS NOT NULL
		INNER JOIN [Parent] [p] ON [a_Child].[ParentID] = [p].[ParentID]

