-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	COUNT(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

