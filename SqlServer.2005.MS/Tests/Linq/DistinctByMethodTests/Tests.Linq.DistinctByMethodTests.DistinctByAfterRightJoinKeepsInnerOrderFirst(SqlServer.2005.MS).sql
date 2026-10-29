-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[ChildID]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [c_1].[ChildID], [e].[ParentID] DESC) as [RowNumber],
			[c_1].[ChildID],
			[e].[ParentID],
			[e].[Value1]
		FROM
			[Parent] [e]
				RIGHT JOIN [Child] [c_1] ON [e].[ParentID] = [c_1].[ParentID]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ChildID],
	[t1].[ParentID] DESC

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

