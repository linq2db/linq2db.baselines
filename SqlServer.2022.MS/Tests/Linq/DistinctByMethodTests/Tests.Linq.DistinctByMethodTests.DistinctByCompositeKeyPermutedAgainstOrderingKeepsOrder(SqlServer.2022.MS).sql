-- SqlServer.2022.MS SqlServer.2022
SELECT
	[p].[ParentID]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[ParentID], [e].[Value1] ORDER BY [e].[Value1], [e].[ParentID]) as [RowNumber],
			[e].[ParentID],
			[e].[Value1] as [RowNumber_1]
		FROM
			[Parent] [e]
	) [p]
WHERE
	[p].[RowNumber] = 1
ORDER BY
	[p].[RowNumber_1],
	[p].[ParentID]

