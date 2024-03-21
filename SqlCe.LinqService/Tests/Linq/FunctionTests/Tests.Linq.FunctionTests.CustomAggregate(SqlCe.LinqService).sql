BeforeExecute
-- SqlCe

SELECT
	[g_2].[SUM_1],
	[t1].[MySum]
FROM
	(
		SELECT
			SUM([g_1].[Value1]) as [SUM_1],
			[g_1].[ParentID]
		FROM
			[Parent] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
		OUTER APPLY (
			SELECT
				SUM([p].[Value1]) as [MySum]
			FROM
				[Parent] [p]
			WHERE
				[g_2].[ParentID] = [p].[ParentID]
		) [t1]

