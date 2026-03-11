-- SqlServer.2014

SELECT
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	SUM(IIF([g_1].[ChildID] > 30, [g_1].[ChildID], NULL)),
	MIN(IIF([g_1].[ChildID] > 30, [g_1].[ChildID], NULL)),
	MAX(IIF([g_1].[ChildID] > 30, [g_1].[ChildID], NULL)),
	AVG(IIF([g_1].[ChildID] > 30, [g_1].[ChildID], NULL))
FROM
	[Child] [g_1]
WHERE
	[g_1].[ChildID] > 30
GROUP BY
	[g_1].[ParentID]

