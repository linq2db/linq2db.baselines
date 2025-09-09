BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	SUM(IIF([g_1].[ChildID] > 30, [g_1].[ChildID], NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

