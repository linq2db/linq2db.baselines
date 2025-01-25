BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	SUM([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

