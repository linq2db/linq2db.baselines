BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) > 2 OR COUNT(IIF([g_1].[ChildID] = 20, 1, NULL)) > 2

