BeforeExecute
-- SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1],
	SUM([g_1].[ChildID]) as [SUM_1],
	MIN([g_1].[ChildID]) as [MIN_1],
	MAX([g_1].[ChildID]) as [MAX_1],
	AVG([g_1].[ChildID]) as [AVG_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

