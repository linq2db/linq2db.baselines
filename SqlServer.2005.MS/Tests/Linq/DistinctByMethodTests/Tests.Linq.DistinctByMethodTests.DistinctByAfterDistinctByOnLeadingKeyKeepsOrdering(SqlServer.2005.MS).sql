-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[RowNumber_1],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[RowNumber_1] % 2 ORDER BY [e_1].[RowNumber_1] % 3, [e_1].[RowNumber_1] DESC) as [RowNumber],
			[e_1].[RowNumber_1],
			[e_1].[Value1]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY [e].[ParentID] % 3 ORDER BY [e].[ParentID] % 3, [e].[ParentID] DESC) as [RowNumber],
					[e].[ParentID] as [RowNumber_1],
					[e].[Value1]
				FROM
					[Parent] [e]
			) [e_1]
		WHERE
			[e_1].[RowNumber] = 1
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_1] % 3,
	[t1].[RowNumber_1] DESC

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

