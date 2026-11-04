-- SqlServer.2017.MS SqlServer.2017
SELECT
	[x].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[Value1],
			[e].[ParentID] as [RowNumber_1]
		FROM
			[Parent] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[RowNumber_1] DESC

