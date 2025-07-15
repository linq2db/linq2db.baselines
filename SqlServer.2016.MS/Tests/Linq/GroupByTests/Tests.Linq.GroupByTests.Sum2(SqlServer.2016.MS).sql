BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	SUM([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

