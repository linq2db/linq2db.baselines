-- SqlServer.2017.MS SqlServer.2017
SELECT
	[p].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON 1 = 0

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

