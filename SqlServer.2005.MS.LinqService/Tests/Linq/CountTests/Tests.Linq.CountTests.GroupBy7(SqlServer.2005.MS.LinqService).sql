BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

