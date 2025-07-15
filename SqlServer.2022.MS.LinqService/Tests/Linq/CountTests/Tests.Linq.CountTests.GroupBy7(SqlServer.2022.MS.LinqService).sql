BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

