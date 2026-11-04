-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[RowNumber_2],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[RowNumber] ORDER BY [e].[RowNumber_1], [e].[RowNumber_2] DESC) as [RowNumber],
			[e].[RowNumber_1],
			[e].[RowNumber_2],
			[e].[Count_1]
		FROM
			(
				SELECT
					[g_1].[ParentID] % 2 as [RowNumber],
					CASE
						WHEN [g_1].[ParentID] = 1 THEN 0
						ELSE 1
					END as [RowNumber_1],
					[g_1].[ParentID] as [RowNumber_2],
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
	[t1].[RowNumber_1],
	[t1].[RowNumber_2] DESC

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

