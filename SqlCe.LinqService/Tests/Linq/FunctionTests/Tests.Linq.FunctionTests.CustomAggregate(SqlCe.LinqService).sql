BeforeExecute
-- SqlCe

SELECT
	Sum([g_1].[Value1]) as [Sum_1],
	SUM([g_1].[Value1]) as [MySum]
FROM
	[Parent] [g_1]
GROUP BY
	[g_1].[ParentID]

