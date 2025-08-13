BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	MAX([g_1].[ChildID]),
	MAX([g_1].[ChildID] + [g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

