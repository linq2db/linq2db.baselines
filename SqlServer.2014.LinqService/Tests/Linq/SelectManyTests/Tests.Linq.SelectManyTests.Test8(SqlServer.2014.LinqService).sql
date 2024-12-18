BeforeExecute
-- SqlServer.2014

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ParentID] IS NOT NULL AND [g_1].[ChildID] = [a_Child].[ChildID] AND [g_1].[ChildID] IS NOT NULL
		CROSS JOIN [Parent] [c_2]
WHERE
	[p].[ParentID] = [g_1].[ParentID] AND [g_1].[ParentID] IS NOT NULL

