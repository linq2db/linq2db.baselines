-- SqlServer.2014.MS SqlServer.2014
SELECT
	[p].[ParentID],
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [c_1].[ParentID] = [p].[ParentID]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

