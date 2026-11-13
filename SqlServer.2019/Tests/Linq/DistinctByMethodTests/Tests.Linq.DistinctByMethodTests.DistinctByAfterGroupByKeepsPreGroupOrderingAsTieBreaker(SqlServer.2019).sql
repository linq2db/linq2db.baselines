-- SqlServer.2019
SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Key_1] ORDER BY [e_1].[Count_1]) as [RowNumber],
			[e_1].[Key_1],
			[e_1].[Count_1]
		FROM
			(
				SELECT
					[e].[ParentID] as [Key_1],
					COUNT(*) as [Count_1]
				FROM
					[Parent] [e]
				GROUP BY
					[e].[ParentID]
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[Count_1],
	[t1].[Key_1] DESC

