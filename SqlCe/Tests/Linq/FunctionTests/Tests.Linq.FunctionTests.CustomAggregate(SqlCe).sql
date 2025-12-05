-- SqlCe

SELECT
	SUM([g_1].[Value1]) as [sum1],
	SUM([g_1].[Value1]) as [sum2]
FROM
	[Parent] [g_1]
GROUP BY
	[g_1].[ParentID]

