-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Key_1],
	[t1].[C_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Key_1] % 2 ORDER BY [e].[RowNumber]) as [RowNumber],
			[e].[RowNumber] as [RowNumber_1],
			[e].[Key_1],
			[e].[C_1]
		FROM
			(
				SELECT
					[g_2].[Key_1],
					-[g_2].[Key_1] as [RowNumber],
					COUNT(*) as [C_1]
				FROM
					(
						SELECT DISTINCT
							[g_1].[ParentID] as [Key_1]
						FROM
							[Parent] [g_1]
					) [g_2]
				GROUP BY
					[g_2].[Key_1]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_1]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

