-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[ChildID]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC, [c_1].[ChildID]) as [RowNumber],
			[e].[ParentID],
			[c_1].[ChildID],
			[e].[Value1]
		FROM
			[Parent] [e]
				INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [e].[ParentID]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC,
	[t1].[ChildID]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

