BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(IIF([g_1].[ChildID] > 20, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID],
	[g_1].[ChildID]

