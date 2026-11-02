-- SqlServer.2022
SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Key_1] % 2 ORDER BY [e].[RowNumber]) as [RowNumber],
			[e].[RowNumber] as [RowNumber_1],
			[e].[Key_1],
			[e].[Count_1]
		FROM
			(
				SELECT
					[g_1].[ParentID] as [Key_1],
					-[g_1].[ParentID] as [RowNumber],
					COUNT(*) as [Count_1]
				FROM
					[Parent] [g_1]
				GROUP BY
					[g_1].[ParentID]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_1]

-- SqlServer.2022
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

