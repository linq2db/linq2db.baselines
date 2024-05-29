BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	SUM([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

