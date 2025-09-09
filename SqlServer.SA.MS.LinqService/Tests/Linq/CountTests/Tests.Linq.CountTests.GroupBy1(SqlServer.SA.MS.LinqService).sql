BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	COUNT(IIF([g_1].[ChildID] > 20, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

