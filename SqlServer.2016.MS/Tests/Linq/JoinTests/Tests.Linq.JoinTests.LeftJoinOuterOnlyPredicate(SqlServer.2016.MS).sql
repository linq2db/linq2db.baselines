-- SqlServer.2016.MS SqlServer.2016
SELECT
	[p].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID] AND [p].[ParentID] <> 2

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

