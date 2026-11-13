-- SqlServer.2005.MS SqlServer.2005
SELECT
	[x].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[Value1],
			[e].[ParentID]
		FROM
			[Parent] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[ParentID] DESC

