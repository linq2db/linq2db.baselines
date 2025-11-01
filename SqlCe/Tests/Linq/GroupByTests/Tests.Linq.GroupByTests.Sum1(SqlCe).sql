-- SqlCe

SELECT
	SUM([g_1].[ChildID]) as [SUM_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

