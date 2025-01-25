BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(IIF([g_1].[ChildID] < 30, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

