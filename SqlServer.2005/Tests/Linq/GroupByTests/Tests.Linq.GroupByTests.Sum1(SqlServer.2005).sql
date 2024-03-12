BeforeExecute
-- SqlServer.2005

SELECT
	Sum([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

