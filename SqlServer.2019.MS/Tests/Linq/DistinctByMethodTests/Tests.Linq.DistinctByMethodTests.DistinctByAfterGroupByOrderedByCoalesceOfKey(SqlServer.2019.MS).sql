-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[c1] ORDER BY [e].[c2] DESC) as [RowNumber],
			[e].[c2],
			[e].[Key_1],
			[e].[Count_1]
		FROM
			(
				SELECT
					Coalesce([g_1].[Value1], 0) % 2 as [c1],
					Coalesce([g_1].[Value1], 0) as [c2],
					[g_1].[Value1] as [Key_1],
					COUNT(*) as [Count_1]
				FROM
					[Parent] [g_1]
				GROUP BY
					[g_1].[Value1]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[c2] DESC

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

