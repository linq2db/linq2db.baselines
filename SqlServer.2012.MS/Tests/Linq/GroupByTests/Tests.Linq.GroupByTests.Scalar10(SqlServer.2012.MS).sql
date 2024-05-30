BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(IIF([g_1].[ChildID] < 30 AND [g_1].[ChildID] >= 20, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

