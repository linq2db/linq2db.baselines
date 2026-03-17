-- SqlServer.2012.MS SqlServer.2012

SELECT
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

