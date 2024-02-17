BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[ParentID] + 1,
	Min([g_1].[ChildID]),
	Count(IIF([g_1].[ChildID] > 25, 1, NULL))
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] > 0
GROUP BY
	[g_1].[ParentID] + 1

