BeforeExecute
-- SqlServer.2012

SELECT
	Max([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

