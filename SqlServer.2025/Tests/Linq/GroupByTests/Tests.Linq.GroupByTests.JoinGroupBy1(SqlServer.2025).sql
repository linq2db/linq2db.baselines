-- SqlServer.2025 SqlServer.2022

SELECT
	[g_1].[ParentID]
FROM
	[Child] [gc]
		INNER JOIN [GrandChild] [g_1] ON [gc].[ParentID] = [g_1].[ParentID] AND [gc].[ChildID] = [g_1].[ChildID]
GROUP BY
	[g_1].[ParentID]

