BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

