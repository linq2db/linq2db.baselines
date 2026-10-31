-- SqlServer.2012
SELECT TOP (1)
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY -[e].[ParentID] ORDER BY [e].[ParentID]) as [RowNumber],
			[e].[ParentID],
			[e].[Value1]
		FROM
			[Parent] [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID]

