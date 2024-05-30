BeforeExecute
-- SqlCe

SELECT
	[g_2].[c1],
	SUM([g_2].[ParentID]) as [SUM_1]
FROM
	(
		SELECT
			[g_1].[ChildID] + 1 as [c1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]

