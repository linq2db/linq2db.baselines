BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) > 2 AND COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) IS NOT NULL OR
	COUNT(IIF([g_1].[ChildID] = 20, 1, NULL)) > 2 AND COUNT(IIF([g_1].[ChildID] = 20, 1, NULL)) IS NOT NULL

