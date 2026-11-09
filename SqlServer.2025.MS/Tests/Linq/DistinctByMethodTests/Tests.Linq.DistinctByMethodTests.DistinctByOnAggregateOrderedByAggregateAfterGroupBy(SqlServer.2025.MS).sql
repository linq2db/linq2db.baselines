-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Count_1] ORDER BY [e_1].[Count_1] DESC, [e_1].[c1] DESC) as [RowNumber],
			[e_1].[Count_1],
			[e_1].[Key_1]
		FROM
			(
				SELECT
					COUNT(*) as [Count_1],
					Coalesce([e].[Value1], 0) as [c1],
					[e].[Value1] as [Key_1]
				FROM
					[Parent] [e]
				GROUP BY
					[e].[Value1]
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[Count_1] DESC,
	Coalesce([t1].[Key_1], 0) DESC

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

