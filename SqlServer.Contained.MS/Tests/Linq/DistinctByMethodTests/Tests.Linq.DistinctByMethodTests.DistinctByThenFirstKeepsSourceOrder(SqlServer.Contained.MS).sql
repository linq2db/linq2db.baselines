-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t1].[RowNumber_1],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY -[e].[ParentID] ORDER BY [e].[ParentID]) as [RowNumber],
			[e].[ParentID] as [RowNumber_1],
			[e].[Value1]
		FROM
			[Parent] [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_1]

