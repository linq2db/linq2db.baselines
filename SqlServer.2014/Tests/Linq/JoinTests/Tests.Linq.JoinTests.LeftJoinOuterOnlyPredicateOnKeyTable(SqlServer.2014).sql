-- SqlServer.2014
SELECT
	[p].[ParentID],
	[ch].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
		LEFT JOIN [GrandChild] [gc] ON [ch].[ChildID] = [gc].[ChildID] AND [ch].[ParentID] <> 2

-- SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

