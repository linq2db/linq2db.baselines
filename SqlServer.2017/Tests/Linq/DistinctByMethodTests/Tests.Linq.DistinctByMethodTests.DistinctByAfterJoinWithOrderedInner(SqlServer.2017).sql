-- SqlServer.2017
SELECT
	[t1].[RowNumber_2],
	[t1].[RowNumber_1],
	[t1].[RowNumber_3]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC, [c_1].[ChildID]) as [RowNumber],
			[e].[Value1] as [RowNumber_1],
			[e].[ParentID] as [RowNumber_2],
			[c_1].[ChildID] as [RowNumber_3]
		FROM
			[Parent] [e]
				INNER JOIN [Child] [c_1] ON [e].[ParentID] = [c_1].[ParentID]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_2] DESC,
	[t1].[RowNumber_3]

-- SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

