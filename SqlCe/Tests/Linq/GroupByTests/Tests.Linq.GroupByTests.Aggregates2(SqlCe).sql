-- SqlCe

SELECT
	SUM([g_1].[ChildID]) as [Sum_1],
	MIN([g_1].[ChildID]) as [Min_1],
	MAX([g_1].[ChildID]) as [Max_1],
	AVG([g_1].[ChildID]) as [Avg_1],
	COUNT(*) as [Cnt]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

