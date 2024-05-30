BeforeExecute
-- SqlCe

SELECT
	SUM([g_1].[Value1]) as [SUM_1],
	SUM([g_1].[Value1]) as [MySum]
FROM
	[Parent] [g_1]
GROUP BY
	[g_1].[ParentID]

