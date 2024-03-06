BeforeExecute
-- SqlServer.2012

SELECT
	Sum([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

