BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[c_1].[ParentID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ParentID] IS NOT NULL AND [g_1].[ChildID] = [a_Child].[ChildID] AND [g_1].[ChildID] IS NOT NULL
		INNER JOIN [Child] [c_1] ON [a_Child].[ParentID] = [c_1].[ParentID] AND [a_Child].[ParentID] IS NOT NULL AND [a_Child].[ChildID] = [c_1].[ChildID] AND [a_Child].[ChildID] IS NOT NULL

