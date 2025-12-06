-- SqlServer.2012.MS SqlServer.2012

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	COUNT(IIF([g_1].[ChildID] > 20, 1, NULL)) > 2 OR COUNT(IIF([g_1].[ChildID] = 20, 1, NULL)) > 2

