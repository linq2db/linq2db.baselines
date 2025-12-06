-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(IIF([g_1].[ChildID] < 30 AND [g_1].[ChildID] >= 20, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

