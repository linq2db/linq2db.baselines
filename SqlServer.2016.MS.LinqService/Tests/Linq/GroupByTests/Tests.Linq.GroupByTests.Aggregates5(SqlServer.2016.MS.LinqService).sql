BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	COUNT(IIF([g_1].[ChildID] > 30, 1, NULL)),
	COUNT(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

