-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[ParentID]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[ParentID], [e].[Value1] ORDER BY [e].[Value1], [e].[ParentID]) as [RowNumber],
			[e].[Value1],
			[e].[ParentID]
		FROM
			[Parent] [e]
	) [p]
WHERE
	[p].[RowNumber] = 1
ORDER BY
	[p].[Value1],
	[p].[ParentID]

