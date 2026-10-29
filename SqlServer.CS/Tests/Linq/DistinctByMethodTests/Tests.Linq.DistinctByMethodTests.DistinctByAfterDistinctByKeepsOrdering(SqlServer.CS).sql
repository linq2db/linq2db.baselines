-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[ParentID] % 2 ORDER BY [e_1].[ParentID] DESC) as [RowNumber],
			[e_1].[ParentID],
			[e_1].[Value1]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
					[e].[ParentID],
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
	[t1].[ParentID] DESC

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

