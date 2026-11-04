-- SqlServer.Contained.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 7

SELECT
	[t1].[RowNumber_2],
	[t1].[RowNumber_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[RowNumber] ORDER BY [e].[RowNumber_1], [e].[RowNumber_2]) as [RowNumber],
			[e].[RowNumber_1],
			[e].[RowNumber_2]
		FROM
			(
				SELECT TOP (@take)
					[p].[ParentID] % 2 as [RowNumber],
					[p].[Value1] as [RowNumber_1],
					[p].[ParentID] as [RowNumber_2]
				FROM
					[Parent] [p]
				ORDER BY
					[p].[Value1],
					[p].[ParentID]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_1],
	[t1].[RowNumber_2]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

