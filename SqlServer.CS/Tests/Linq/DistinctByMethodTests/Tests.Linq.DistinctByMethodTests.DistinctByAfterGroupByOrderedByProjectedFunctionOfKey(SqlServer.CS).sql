-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[c1] ORDER BY [e].[N]) as [RowNumber],
			[e].[N],
			[e].[Key_1],
			[e].[Count_1]
		FROM
			(
				SELECT
					[g_1].[ParentID] % 2 as [c1],
					-[g_1].[ParentID] as [N],
					[g_1].[ParentID] as [Key_1],
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
	[t1].[N]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

