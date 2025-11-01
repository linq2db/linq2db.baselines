-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[g_1].[ParentID],
	COUNT(*)
FROM
	[Child] [g_1]
		INNER JOIN [GrandChild] [y] ON [g_1].[ParentID] = [y].[ParentID] AND [g_1].[ChildID] = [y].[ChildID]
GROUP BY
	[g_1].[ParentID]

